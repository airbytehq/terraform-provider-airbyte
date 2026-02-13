package provider

import (
	"context"
	"encoding/json"
	"fmt"
	"io"
	"net/http"

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
	Configuration          types.String `tfsdk:"configuration"`
	ConfigurationSecrets   types.String `tfsdk:"configuration_secrets"`
	IgnoreErrors           types.Bool   `tfsdk:"ignore_errors"`
	DefinitionID           types.String `tfsdk:"definition_id"`
	ConfigurationJSON      types.String `tfsdk:"configuration_json"`
}

func (d *ConnectorConfigurationDataSource) Metadata(ctx context.Context, req datasource.MetadataRequest, resp *datasource.MetadataResponse) {
	resp.TypeName = req.ProviderTypeName + "_connector_configuration"
}

func (d *ConnectorConfigurationDataSource) Schema(ctx context.Context, req datasource.SchemaRequest, resp *datasource.SchemaResponse) {
	resp.Schema = schema.Schema{
		MarkdownDescription: `Validates and merges connector configuration for use with airbyte_source or airbyte_destination resources.

This data source resolves a connector name to its definition ID, optionally validates the configuration
against the connector's JSONSchema spec, and merges non-sensitive and sensitive configuration into a
single JSON blob suitable for passing to a resource.

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
			"configuration": schema.StringAttribute{
				Required:            true,
				MarkdownDescription: "JSON-encoded non-sensitive configuration values. These will be visible in Terraform plan output.",
			},
			"configuration_secrets": schema.StringAttribute{
				Optional:            true,
				Sensitive:           true,
				MarkdownDescription: "JSON-encoded sensitive configuration values (API keys, passwords, etc.). These are hidden in Terraform plan output. Keys in this map are merged with (and override) keys in `configuration`.",
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

func resolveDefinitionID(connectorName string) (string, error) {
	dockerName := "airbyte/" + connectorName

	definitionID, err := searchRegistry(cloudRegistryURL, dockerName, connectorName)
	if err == nil && definitionID != "" {
		return definitionID, nil
	}

	definitionID, err = searchRegistry(ossRegistryURL, dockerName, connectorName)
	if err == nil && definitionID != "" {
		return definitionID, nil
	}

	return "", fmt.Errorf("connector %q not found in Cloud or OSS registries", connectorName)
}

func searchRegistry(registryURL, dockerName, connectorName string) (string, error) {
	resp, err := http.Get(registryURL)
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

	isSource := len(connectorName) > 7 && connectorName[:7] == "source-"
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

	definitionID, err := resolveDefinitionID(connectorName)
	if err != nil {
		addDiagnostic(resp, ignoreErrors, "Failed to resolve connector definition ID", err.Error())
		if !ignoreErrors {
			return
		}
	}
	data.DefinitionID = types.StringValue(definitionID)

	configJSON := data.Configuration.ValueString()
	if !isValidJSON(configJSON) {
		addDiagnostic(resp, ignoreErrors, "Invalid configuration JSON", fmt.Sprintf("The `configuration` attribute must be valid JSON, got: %s", configJSON))
		if !ignoreErrors {
			return
		}
	}

	var secretsJSON string
	if !data.ConfigurationSecrets.IsNull() && !data.ConfigurationSecrets.IsUnknown() {
		secretsJSON = data.ConfigurationSecrets.ValueString()
		if !isValidJSON(secretsJSON) {
			addDiagnostic(resp, ignoreErrors, "Invalid configuration_secrets JSON", fmt.Sprintf("The `configuration_secrets` attribute must be valid JSON, got: %s", secretsJSON))
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

func isValidJSON(s string) bool {
	if s == "" {
		return false
	}
	var js json.RawMessage
	return json.Unmarshal([]byte(s), &js) == nil
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
