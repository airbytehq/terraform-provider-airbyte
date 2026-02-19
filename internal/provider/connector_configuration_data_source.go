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
	jsonschema "github.com/santhosh-tekuri/jsonschema/v6"
)

const (
	ossRegistryURL   = "https://connectors.airbyte.com/files/registries/v0/oss_registry.json"
	cloudRegistryURL = "https://connectors.airbyte.com/files/registries/v0/cloud_registry.json"
	connectorCDNBase = "https://connectors.airbyte.com/files/metadata/airbyte"
)

var _ datasource.DataSource = &ConnectorConfigurationDataSource{}

// ConnectorConfigurationDataSource resolves connector metadata from the Airbyte
// registry and merges non-sensitive and sensitive configuration into a single
// JSON blob for use with airbyte_source or airbyte_destination resources.
type ConnectorConfigurationDataSource struct {
	httpClient *http.Client
}

type ConnectorConfigurationDataSourceModel struct {
	ConnectorName        types.String  `tfsdk:"connector_name"`
	ConnectorVersion     types.String  `tfsdk:"connector_version"`
	Configuration        types.Dynamic `tfsdk:"configuration"`
	ConfigurationSecrets types.Dynamic `tfsdk:"configuration_secrets"`
	IgnoreErrors         types.Bool    `tfsdk:"ignore_errors"`
	DefinitionID         types.String  `tfsdk:"definition_id"`
	DockerImageTag       types.String  `tfsdk:"docker_image_tag"`
	ConnectorSpecJSON    types.String  `tfsdk:"connector_spec_json"`
	ConfigurationJSON    types.String  `tfsdk:"configuration_json"`
}

type connectorVersionedEntry struct {
	SourceDefinitionID      string         `json:"sourceDefinitionId"`
	DestinationDefinitionID string         `json:"destinationDefinitionId"`
	DockerRepository        string         `json:"dockerRepository"`
	DockerImageTag          string         `json:"dockerImageTag"`
	Name                    string         `json:"name"`
	Spec                    *connectorSpec `json:"spec"`
}

type connectorSpec struct {
	ConnectionSpecification json.RawMessage `json:"connectionSpecification"`
}

type registryEntry struct {
	SourceDefinitionID      string `json:"sourceDefinitionId"`
	DestinationDefinitionID string `json:"destinationDefinitionId"`
	DockerRepository        string `json:"dockerRepository"`
}

type registryResponse struct {
	Sources      []registryEntry `json:"sources"`
	Destinations []registryEntry `json:"destinations"`
}

// NewConnectorConfigurationDataSource creates a new instance of the data source.
func NewConnectorConfigurationDataSource() datasource.DataSource {
	return &ConnectorConfigurationDataSource{
		httpClient: &http.Client{Timeout: 30 * time.Second},
	}
}

// Metadata sets the data source type name.
func (d *ConnectorConfigurationDataSource) Metadata(ctx context.Context, req datasource.MetadataRequest, resp *datasource.MetadataResponse) {
	resp.TypeName = req.ProviderTypeName + "_connector_configuration"
}

// Schema defines the data source attributes.
func (d *ConnectorConfigurationDataSource) Schema(ctx context.Context, req datasource.SchemaRequest, resp *datasource.SchemaResponse) {
	resp.Schema = schema.Schema{
		MarkdownDescription: `Resolves and merges connector configuration for use with airbyte_source or airbyte_destination resources.

This data source resolves a connector name (and optional version) to its definition ID, fetches the
connector's JSONSchema spec, validates configuration against it, and merges non-sensitive and sensitive
configuration into a single JSON blob suitable for passing to a resource.`,
		Attributes: map[string]schema.Attribute{
			"connector_name": schema.StringAttribute{
				Required:            true,
				MarkdownDescription: "The name of the connector (e.g. `source-postgres`, `destination-bigquery`).",
			},
			"connector_version": schema.StringAttribute{
				Optional:            true,
				MarkdownDescription: "The version of the connector (e.g. `2.0.0`). If not specified, the latest version is used. When set, the connector spec for that exact version is fetched and used for JSONSchema validation.",
			},
			"configuration": schema.DynamicAttribute{
				Required:            true,
				MarkdownDescription: "Non-sensitive configuration values as an HCL object. These will be visible in Terraform plan output.",
			},
			"configuration_secrets": schema.DynamicAttribute{
				Optional:            true,
				Sensitive:           true,
				MarkdownDescription: "Sensitive configuration values (API keys, passwords, etc.) as an HCL object. These are hidden in Terraform plan output. Keys here are deep-merged with (and override) keys in `configuration`.",
			},
			"ignore_errors": schema.BoolAttribute{
				Optional:            true,
				MarkdownDescription: "If true, validation errors (including JSONSchema validation) are reported as warnings instead of errors. Defaults to false.",
			},
			"definition_id": schema.StringAttribute{
				Computed:            true,
				MarkdownDescription: "The UUID of the connector definition, resolved from `connector_name`.",
			},
			"docker_image_tag": schema.StringAttribute{
				Computed:            true,
				MarkdownDescription: "The resolved Docker image tag (version) of the connector.",
			},
			"connector_spec_json": schema.StringAttribute{
				Computed:            true,
				MarkdownDescription: "The connector's `connectionSpecification` JSONSchema, as a JSON string. Useful for debugging or downstream tooling.",
			},
			"configuration_json": schema.StringAttribute{
				Computed:            true,
				Sensitive:           true,
				MarkdownDescription: "The merged JSON configuration (non-sensitive + sensitive) for passing to an airbyte_source or airbyte_destination resource's `configuration` attribute.",
			},
		},
	}
}

// Configure is a no-op; this data source has no provider-level dependencies.
func (d *ConnectorConfigurationDataSource) Configure(ctx context.Context, req datasource.ConfigureRequest, resp *datasource.ConfigureResponse) {
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

	version := ""
	if !data.ConnectorVersion.IsNull() && !data.ConnectorVersion.IsUnknown() {
		version = data.ConnectorVersion.ValueString()
	}

	entry, err := d.fetchVersionedMetadata(ctx, connectorName, version)
	if err != nil {
		if version != "" {
			resp.Diagnostics.AddWarning(
				"Could not fetch versioned connector metadata",
				fmt.Sprintf("Failed to fetch spec for %s version %q: %v. Falling back to registry lookup without version pinning or JSONSchema validation.", connectorName, version, err),
			)
		}
		definitionID, fallbackErr := d.resolveDefinitionID(ctx, connectorName)
		if fallbackErr != nil {
			addDiagnostic(resp, ignoreErrors, "Failed to resolve connector", fmt.Sprintf(
				"Versioned endpoint: %v\nRegistry fallback: %v", err, fallbackErr,
			))
			if !ignoreErrors {
				return
			}
		} else {
			data.DefinitionID = types.StringValue(definitionID)
		}
	} else {
		if strings.HasPrefix(connectorName, "source-") {
			data.DefinitionID = types.StringValue(entry.SourceDefinitionID)
		} else {
			data.DefinitionID = types.StringValue(entry.DestinationDefinitionID)
		}
		data.DockerImageTag = types.StringValue(entry.DockerImageTag)
		if entry.Spec != nil && len(entry.Spec.ConnectionSpecification) > 0 {
			data.ConnectorSpecJSON = types.StringValue(string(entry.Spec.ConnectionSpecification))
		}
	}

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
			secretsJSON = ""
			if !ignoreErrors {
				return
			}
		}
	}

	var merged string
	if configJSON != "" && isValidJSONObject(configJSON) {
		merged, err = deepMergeJSON(configJSON, secretsJSON)
		if err != nil {
			resp.Diagnostics.AddError("Failed to merge configuration", err.Error())
			return
		}
		data.ConfigurationJSON = types.StringValue(merged)
	} else if ignoreErrors {
		merged = "{}"
		data.ConfigurationJSON = types.StringValue(merged)
	} else {
		return
	}

	if entry != nil && entry.Spec != nil && len(entry.Spec.ConnectionSpecification) > 0 && merged != "" {
		validationErrors := validateJSONSchema(entry.Spec.ConnectionSpecification, merged)
		for _, ve := range validationErrors {
			addDiagnostic(resp, ignoreErrors, "Configuration validation error", ve)
		}
		if !ignoreErrors && len(validationErrors) > 0 {
			return
		}
	}

	resp.Diagnostics.Append(resp.State.Set(ctx, &data)...)
}

func (d *ConnectorConfigurationDataSource) fetchVersionedMetadata(ctx context.Context, connectorName, version string) (*connectorVersionedEntry, error) {
	if version == "" {
		version = "latest"
	}

	url := fmt.Sprintf("%s/%s/%s/cloud.json", connectorCDNBase, connectorName, version)

	httpReq, err := http.NewRequestWithContext(ctx, http.MethodGet, url, nil)
	if err != nil {
		return nil, fmt.Errorf("failed to create request for %s: %w", url, err)
	}

	httpResp, err := d.httpClient.Do(httpReq)
	if err != nil {
		return nil, fmt.Errorf("failed to fetch connector metadata from %s: %w", url, err)
	}
	defer httpResp.Body.Close()

	if httpResp.StatusCode != http.StatusOK {
		return nil, fmt.Errorf("connector metadata endpoint %s returned HTTP %d", url, httpResp.StatusCode)
	}

	body, err := io.ReadAll(httpResp.Body)
	if err != nil {
		return nil, fmt.Errorf("failed to read connector metadata response: %w", err)
	}

	var entry connectorVersionedEntry
	if err := json.Unmarshal(body, &entry); err != nil {
		return nil, fmt.Errorf("failed to parse connector metadata JSON: %w", err)
	}

	return &entry, nil
}

func (d *ConnectorConfigurationDataSource) resolveDefinitionID(ctx context.Context, connectorName string) (string, error) {
	dockerName := "airbyte/" + connectorName

	cloudID, cloudErr := d.searchRegistry(ctx, cloudRegistryURL, dockerName, connectorName)
	if cloudErr == nil && cloudID != "" {
		return cloudID, nil
	}

	ossID, ossErr := d.searchRegistry(ctx, ossRegistryURL, dockerName, connectorName)
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

func (d *ConnectorConfigurationDataSource) searchRegistry(ctx context.Context, registryURL, dockerName, connectorName string) (string, error) {
	req, err := http.NewRequestWithContext(ctx, http.MethodGet, registryURL, nil)
	if err != nil {
		return "", fmt.Errorf("failed to create request for %s: %w", registryURL, err)
	}
	resp, err := d.httpClient.Do(req)
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

	if strings.HasPrefix(connectorName, "source-") {
		for _, entry := range registry.Sources {
			if entry.DockerRepository == dockerName {
				return entry.SourceDefinitionID, nil
			}
		}
	} else if strings.HasPrefix(connectorName, "destination-") {
		for _, entry := range registry.Destinations {
			if entry.DockerRepository == dockerName {
				return entry.DestinationDefinitionID, nil
			}
		}
	} else {
		return "", fmt.Errorf("connector_name %q must start with 'source-' or 'destination-'", connectorName)
	}

	return "", nil
}

func validateJSONSchema(schemaBytes json.RawMessage, instanceJSON string) []string {
	var schemaObj interface{}
	if err := json.Unmarshal(schemaBytes, &schemaObj); err != nil {
		return []string{fmt.Sprintf("Failed to parse connector spec schema: %v", err)}
	}

	var instanceObj interface{}
	if err := json.Unmarshal([]byte(instanceJSON), &instanceObj); err != nil {
		return []string{fmt.Sprintf("Failed to parse configuration JSON: %v", err)}
	}

	compiler := jsonschema.NewCompiler()
	if err := compiler.AddResource("schema.json", schemaObj); err != nil {
		return []string{fmt.Sprintf("Failed to load connector spec as JSONSchema resource: %v", err)}
	}

	sch, err := compiler.Compile("schema.json")
	if err != nil {
		return []string{fmt.Sprintf("Failed to compile connector spec JSONSchema: %v", err)}
	}

	err = sch.Validate(instanceObj)
	if err == nil {
		return nil
	}

	validationErr, ok := err.(*jsonschema.ValidationError)
	if !ok {
		return []string{err.Error()}
	}

	var errors []string
	collectValidationErrors(validationErr, &errors)
	return errors
}

func collectValidationErrors(ve *jsonschema.ValidationError, errors *[]string) {
	if len(ve.Causes) == 0 {
		msg := ve.Error()
		if msg != "" {
			*errors = append(*errors, msg)
		}
		return
	}
	for _, cause := range ve.Causes {
		collectValidationErrors(cause, errors)
	}
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
	if err := json.Unmarshal([]byte(s), &obj); err != nil {
		return false
	}
	return obj != nil
}

func deepMergeJSON(base, overlay string) (string, error) {
	var baseMap map[string]interface{}
	if err := json.Unmarshal([]byte(base), &baseMap); err != nil {
		return "", fmt.Errorf("failed to parse base configuration: %w", err)
	}

	if overlay != "" {
		var overlayMap map[string]interface{}
		if err := json.Unmarshal([]byte(overlay), &overlayMap); err != nil {
			return "", fmt.Errorf("failed to parse secrets configuration: %w", err)
		}
		deepMergeMaps(baseMap, overlayMap)
	}

	result, err := json.Marshal(baseMap)
	if err != nil {
		return "", fmt.Errorf("failed to marshal merged configuration: %w", err)
	}
	return string(result), nil
}

func deepMergeMaps(dst, src map[string]interface{}) {
	for k, srcVal := range src {
		dstVal, exists := dst[k]
		if !exists {
			dst[k] = srcVal
			continue
		}
		srcMap, srcOK := srcVal.(map[string]interface{})
		dstMap, dstOK := dstVal.(map[string]interface{})
		if srcOK && dstOK {
			deepMergeMaps(dstMap, srcMap)
		} else {
			dst[k] = srcVal
		}
	}
}

func addDiagnostic(resp *datasource.ReadResponse, ignoreErrors bool, summary, detail string) {
	if ignoreErrors {
		resp.Diagnostics.Append(diag.NewWarningDiagnostic(summary, detail))
	} else {
		resp.Diagnostics.AddError(summary, detail)
	}
}
