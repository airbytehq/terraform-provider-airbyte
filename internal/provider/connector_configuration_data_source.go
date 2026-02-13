package provider

import (
	"context"
	"encoding/json"
	"fmt"
	"io"
	"math/big"
	"net/http"
	"strings"
	"time"

	"github.com/hashicorp/terraform-plugin-framework/attr"
	"github.com/hashicorp/terraform-plugin-framework/datasource"
	"github.com/hashicorp/terraform-plugin-framework/datasource/schema"
	"github.com/hashicorp/terraform-plugin-framework/diag"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

var _ datasource.DataSource = &ConnectorConfigurationDataSource{}

func NewConnectorConfigurationDataSource() datasource.DataSource {
	return &ConnectorConfigurationDataSource{}
}

type ConnectorConfigurationDataSource struct{}

type ConnectorConfigurationDataSourceModel struct {
	ConnectorName          types.String `tfsdk:"connector_name"`
	ConnectorVersion       types.String `tfsdk:"connector_version"`
	Configuration        types.Dynamic `tfsdk:"configuration"`
	ConfigurationSecrets types.Dynamic `tfsdk:"configuration_secrets"`
	IgnoreErrors           types.Bool   `tfsdk:"ignore_errors"`
	DefinitionID           types.String `tfsdk:"definition_id"`
	ConfigurationJSON      types.String `tfsdk:"configuration_json"`
}

func (d *ConnectorConfigurationDataSource) Metadata(ctx context.Context, req datasource.MetadataRequest, resp *datasource.MetadataResponse) {
	resp.TypeName = req.ProviderTypeName + "_connector_configuration"
}

func (d *ConnectorConfigurationDataSource) Schema(ctx context.Context, req datasource.SchemaRequest, resp *datasource.SchemaResponse) {
	resp.Schema = schema.Schema{
		MarkdownDescription: `Resolves and merges connector configuration for use with airbyte_source or airbyte_destination resources.

This data source resolves a connector name to its definition ID and merges non-sensitive and sensitive
configuration into a single JSON blob suitable for passing to a resource.

Use this data source to get clean Terraform diffs on non-sensitive configuration values while keeping
secrets hidden in state and plan output.`,
		Attributes: map[string]schema.Attribute{
			"connector_name": schema.StringAttribute{
				Required:            true,
				MarkdownDescription: "The name of the connector (e.g. `source-postgres`, `destination-bigquery`).",
			},
			"connector_version": schema.StringAttribute{
				Optional:            true,
				MarkdownDescription: "The version of the connector. If not specified, the latest version from the registry is used. Currently unused; reserved for future JSONSchema validation.",
			},
			"configuration": schema.DynamicAttribute{
				Required:            true,
				MarkdownDescription: "Non-sensitive configuration values as an HCL object. These will be visible in Terraform plan output.",
			},
			"configuration_secrets": schema.DynamicAttribute{
				Optional:            true,
				Sensitive:           true,
				MarkdownDescription: "Sensitive configuration values (API keys, passwords, etc.) as an HCL object. These are hidden in Terraform plan output. Keys here are merged with (and override) keys in `configuration`.",
			},
			"ignore_errors": schema.BoolAttribute{
				Optional:            true,
				MarkdownDescription: "If true, validation errors are reported as warnings instead of errors. Defaults to false.",
			},
			"definition_id": schema.StringAttribute{
				Computed:            true,
				MarkdownDescription: "The UUID of the connector definition, resolved from `connector_name`.",
			},
			"configuration_json": schema.StringAttribute{
				Computed:            true,
				Sensitive:           true,
				MarkdownDescription: "The merged JSON configuration (non-sensitive + sensitive) for passing to an airbyte_source or airbyte_destination resource's `configuration` attribute.",
			},
		},
	}
}

func (d *ConnectorConfigurationDataSource) Configure(ctx context.Context, req datasource.ConfigureRequest, resp *datasource.ConfigureResponse) {
}

const (
	ossRegistryURL   = "https://connectors.airbyte.com/files/registries/v0/oss_registry.json"
	cloudRegistryURL = "https://connectors.airbyte.com/files/registries/v0/cloud_registry.json"
)

type registryEntry struct {
	SourceDefinitionID      string `json:"sourceDefinitionId"`
	DestinationDefinitionID string `json:"destinationDefinitionId"`
	DockerRepository        string `json:"dockerRepository"`
}

type registryResponse struct {
	Sources      []registryEntry `json:"sources"`
	Destinations []registryEntry `json:"destinations"`
}

func resolveDefinitionID(ctx context.Context, connectorName string) (string, error) {
	dockerName := "airbyte/" + connectorName

	cloudID, cloudErr := searchRegistry(ctx, cloudRegistryURL, dockerName, connectorName)
	if cloudErr == nil && cloudID != "" {
		return cloudID, nil
	}

	ossID, ossErr := searchRegistry(ctx, ossRegistryURL, dockerName, connectorName)
	if ossErr == nil && ossID != "" {
		return ossID, nil
	}

	if cloudErr != nil || ossErr != nil {
		var parts []string
		if cloudErr != nil {
			parts = append(parts, fmt.Sprintf("cloud: %v", cloudErr))
		}
		if ossErr != nil {
			parts = append(parts, fmt.Sprintf("oss: %v", ossErr))
		}
		return "", fmt.Errorf("failed to resolve connector %q: %s", connectorName, strings.Join(parts, "; "))
	}

	return "", fmt.Errorf("connector %q not found in Cloud or OSS registries", connectorName)
}

func searchRegistry(ctx context.Context, registryURL, dockerName, connectorName string) (string, error) {
	client := &http.Client{Timeout: 30 * time.Second}
	req, err := http.NewRequestWithContext(ctx, http.MethodGet, registryURL, nil)
	if err != nil {
		return "", fmt.Errorf("failed to create request for %s: %w", registryURL, err)
	}
	resp, err := client.Do(req)
	if err != nil {
		return "", fmt.Errorf("failed to fetch registry from %s: %w", registryURL, err)
	}
	defer resp.Body.Close()

	if resp.StatusCode != http.StatusOK {
		return "", fmt.Errorf("registry %s returned HTTP %d", registryURL, resp.StatusCode)
	}

	body, err := io.ReadAll(resp.Body)
	if err != nil {
		return "", fmt.Errorf("failed to read registry response: %w", err)
	}

	var registry registryResponse
	if err := json.Unmarshal(body, &registry); err != nil {
		return "", fmt.Errorf("failed to parse registry JSON: %w", err)
	}

	isSource := strings.HasPrefix(connectorName, "source-")
	if isSource {
		for _, entry := range registry.Sources {
			if entry.DockerRepository == dockerName {
				return entry.SourceDefinitionID, nil
			}
		}
	} else {
		for _, entry := range registry.Destinations {
			if entry.DockerRepository == dockerName {
				return entry.DestinationDefinitionID, nil
			}
		}
	}

	return "", nil
}

func (d *ConnectorConfigurationDataSource) Read(ctx context.Context, req datasource.ReadRequest, resp *datasource.ReadResponse) {
	var data ConnectorConfigurationDataSourceModel

	resp.Diagnostics.Append(req.Config.Get(ctx, &data)...)
	if resp.Diagnostics.HasError() {
		return
	}

	connectorName := data.ConnectorName.ValueString()
	ignoreErrors := false
	if !data.IgnoreErrors.IsNull() && !data.IgnoreErrors.IsUnknown() {
		ignoreErrors = data.IgnoreErrors.ValueBool()
	}

	definitionID, err := resolveDefinitionID(ctx, connectorName)
	if err != nil {
		addDiagnostic(resp, ignoreErrors, "Failed to resolve connector definition ID", err.Error())
		if !ignoreErrors {
			return
		}
	}
	data.DefinitionID = types.StringValue(definitionID)

	configJSON, err := dynamicToJSON(data.Configuration)
	if err != nil {
		addDiagnostic(resp, ignoreErrors, "Invalid configuration", err.Error())
		if !ignoreErrors {
			return
		}
	}
	if configJSON == "" || !isValidJSONObject(configJSON) {
		addDiagnostic(resp, ignoreErrors, "Invalid configuration", "The `configuration` attribute must be a non-empty JSON object (not an empty string, array, or primitive).")
		if !ignoreErrors {
			return
		}
	}

	var secretsJSON string
	if !data.ConfigurationSecrets.IsNull() && !data.ConfigurationSecrets.IsUnknown() {
		secretsJSON, err = dynamicToJSON(data.ConfigurationSecrets)
		if err != nil {
			addDiagnostic(resp, ignoreErrors, "Invalid configuration_secrets", err.Error())
			if !ignoreErrors {
				return
			}
		}
		if secretsJSON != "" && !isValidJSONObject(secretsJSON) {
			addDiagnostic(resp, ignoreErrors, "Invalid configuration_secrets", "The `configuration_secrets` attribute must be an object (not an array or primitive).")
			if !ignoreErrors {
				return
			}
		}
	}

	merged, err := mergeJSON(configJSON, secretsJSON)
	if err != nil {
		addDiagnostic(resp, ignoreErrors, "Failed to merge configuration", err.Error())
		if !ignoreErrors {
			return
		}
		merged = configJSON
	}

	data.ConfigurationJSON = types.StringValue(merged)

	resp.Diagnostics.Append(resp.State.Set(ctx, &data)...)
}

func dynamicToJSON(val types.Dynamic) (string, error) {
	if val.IsNull() || val.IsUnknown() {
		return "", nil
	}
	underlying := val.UnderlyingValue()
	if strVal, ok := underlying.(types.String); ok {
		return strVal.ValueString(), nil
	}
	goVal, err := attrValueToGo(underlying)
	if err != nil {
		return "", err
	}
	b, err := json.Marshal(goVal)
	if err != nil {
		return "", fmt.Errorf("failed to marshal to JSON: %w", err)
	}
	return string(b), nil
}

func attrValueToGo(val attr.Value) (interface{}, error) {
	if val.IsNull() || val.IsUnknown() {
		return nil, nil
	}
	switch v := val.(type) {
	case types.String:
		return v.ValueString(), nil
	case types.Bool:
		return v.ValueBool(), nil
	case types.Number:
		bf := v.ValueBigFloat()
		if bf.IsInt() {
			i, acc := bf.Int64()
			if acc == big.Exact {
				return i, nil
			}
		}
		f, _ := bf.Float64()
		return f, nil
	case types.Object:
		result := make(map[string]interface{})
		for k, attrVal := range v.Attributes() {
			goVal, err := attrValueToGo(attrVal)
			if err != nil {
				return nil, err
			}
			result[k] = goVal
		}
		return result, nil
	case types.Map:
		result := make(map[string]interface{})
		for k, attrVal := range v.Elements() {
			goVal, err := attrValueToGo(attrVal)
			if err != nil {
				return nil, err
			}
			result[k] = goVal
		}
		return result, nil
	case types.List:
		elements := v.Elements()
		result := make([]interface{}, len(elements))
		for i, attrVal := range elements {
			goVal, err := attrValueToGo(attrVal)
			if err != nil {
				return nil, err
			}
			result[i] = goVal
		}
		return result, nil
	case types.Tuple:
		elements := v.Elements()
		result := make([]interface{}, len(elements))
		for i, attrVal := range elements {
			goVal, err := attrValueToGo(attrVal)
			if err != nil {
				return nil, err
			}
			result[i] = goVal
		}
		return result, nil
	case types.Set:
		elements := v.Elements()
		result := make([]interface{}, len(elements))
		for i, attrVal := range elements {
			goVal, err := attrValueToGo(attrVal)
			if err != nil {
				return nil, err
			}
			result[i] = goVal
		}
		return result, nil
	default:
		return nil, fmt.Errorf("unsupported value type: %T", val)
	}
}

func isValidJSONObject(s string) bool {
	if s == "" {
		return false
	}
	var obj map[string]interface{}
	return json.Unmarshal([]byte(s), &obj) == nil
}

func mergeJSON(base, overlay string) (string, error) {
	var baseMap map[string]interface{}
	if err := json.Unmarshal([]byte(base), &baseMap); err != nil {
		return "", fmt.Errorf("failed to parse base configuration: %w", err)
	}

	if overlay != "" {
		var overlayMap map[string]interface{}
		if err := json.Unmarshal([]byte(overlay), &overlayMap); err != nil {
			return "", fmt.Errorf("failed to parse secrets configuration: %w", err)
		}
		for k, v := range overlayMap {
			baseMap[k] = v
		}
	}

	result, err := json.Marshal(baseMap)
	if err != nil {
		return "", fmt.Errorf("failed to marshal merged configuration: %w", err)
	}
	return string(result), nil
}

func addDiagnostic(resp *datasource.ReadResponse, ignoreErrors bool, summary, detail string) {
	if ignoreErrors {
		resp.Diagnostics.Append(diag.NewWarningDiagnostic(summary, detail))
	} else {
		resp.Diagnostics.AddError(summary, detail)
	}
}
