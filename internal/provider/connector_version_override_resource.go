package provider

import (
	"bytes"
	"context"
	"encoding/json"
	"fmt"
	"io"
	"net/http"
	"os"
	"strings"
	"time"

	"github.com/hashicorp/terraform-plugin-framework-validators/stringvalidator"
	"github.com/hashicorp/terraform-plugin-framework/path"
	"github.com/hashicorp/terraform-plugin-framework/resource"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema/planmodifier"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema/stringplanmodifier"
	"github.com/hashicorp/terraform-plugin-framework/schema/validator"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

const (
	// scopedConfigConnectorVersionKey is the scoped_configuration "config_key" used for connector version overrides.
	scopedConfigConnectorVersionKey = "connector_version"
	// scopedConfigActorDefinitionResourceType is the scoped_configuration "resource_type" for connector definitions.
	scopedConfigActorDefinitionResourceType = "actor_definition"
	// scopedConfigUserOriginType is the scoped_configuration "origin_type" for manual user-driven overrides.
	scopedConfigUserOriginType = "user"

	// envBearerAuth is the env var read for the Airbyte bearer token used by the config API.
	envBearerAuth = "AIRBYTE_BEARER_AUTH"
	// envConfigAPIURL is the env var read as a fallback for the config_server_url attribute.
	envConfigAPIURL = "AIRBYTE_CONFIG_API_URL"

	// minDescriptionLength matches the airbyte-ops-mcp convention for override reasons.
	minDescriptionLength = 10
)

var validScopeTypes = []string{"actor", "workspace", "organization"}

var (
	_ resource.Resource                = &ConnectorVersionOverrideResource{}
	_ resource.ResourceWithImportState = &ConnectorVersionOverrideResource{}
)

// NewConnectorVersionOverrideResource creates a new instance of the connector version override resource.
func NewConnectorVersionOverrideResource() resource.Resource {
	return &ConnectorVersionOverrideResource{
		httpClient: &http.Client{Timeout: 60 * time.Second},
	}
}

// ConnectorVersionOverrideResource manages a single scoped_configuration row of
// config_key=connector_version against the Airbyte internal config API.
//
// It is hand-coded (not Speakeasy generated) because the scoped_configuration
// endpoints live in the internal config API (config.yaml) and are not surfaced
// in the public API (api.yaml) that the rest of the provider is generated from.
//
// Authentication: a bearer token (typically the same one used for the public
// API) is read from the AIRBYTE_BEARER_AUTH environment variable. Calls require
// instance admin permissions on the target Airbyte deployment.
type ConnectorVersionOverrideResource struct {
	httpClient *http.Client
}

// ConnectorVersionOverrideResourceModel describes the resource data model.
type ConnectorVersionOverrideResourceModel struct {
	ID                types.String `tfsdk:"id"`
	ScopeType         types.String `tfsdk:"scope_type"`
	ScopeID           types.String `tfsdk:"scope_id"`
	ActorDefinitionID types.String `tfsdk:"actor_definition_id"`
	Version           types.String `tfsdk:"version"`
	OriginEmail       types.String `tfsdk:"origin_email"`
	Description       types.String `tfsdk:"description"`
	ReferenceURL      types.String `tfsdk:"reference_url"`
	ExpiresAt         types.String `tfsdk:"expires_at"`
	ConfigServerURL   types.String `tfsdk:"config_server_url"`
}

// scopedConfigCreateRequest mirrors ScopedConfigurationCreateRequestBody from
// airbyte-platform-internal config.yaml.
type scopedConfigCreateRequest struct {
	Value        string `json:"value"`
	ConfigKey    string `json:"config_key"`
	ScopeID      string `json:"scope_id"`
	ScopeType    string `json:"scope_type"`
	Origin       string `json:"origin"`
	OriginType   string `json:"origin_type"`
	ResourceID   string `json:"resource_id,omitempty"`
	ResourceType string `json:"resource_type,omitempty"`
	Description  string `json:"description,omitempty"`
	ReferenceURL string `json:"reference_url,omitempty"`
	ExpiresAt    string `json:"expires_at,omitempty"`
}

// scopedConfigRead mirrors ScopedConfigurationRead.
type scopedConfigRead struct {
	ID           string `json:"id"`
	Value        string `json:"value"`
	Description  string `json:"description"`
	ReferenceURL string `json:"reference_url"`
	ConfigKey    string `json:"config_key"`
	ResourceID   string `json:"resource_id"`
	ResourceType string `json:"resource_type"`
	ScopeID      string `json:"scope_id"`
	ScopeType    string `json:"scope_type"`
	Origin       string `json:"origin"`
	OriginType   string `json:"origin_type"`
	ExpiresAt    string `json:"expires_at"`
}

type scopedConfigCreateResponse struct {
	Data scopedConfigRead `json:"data"`
}

type scopedConfigReadResponse struct {
	Data scopedConfigRead `json:"data"`
}

type scopedConfigUpdateRequest struct {
	ScopedConfigurationID string                    `json:"scopedConfigurationId"`
	Data                  scopedConfigCreateRequest `json:"data"`
}

type scopedConfigUpdateResponse struct {
	Data scopedConfigRead `json:"data"`
}

// Metadata sets the resource type name.
func (r *ConnectorVersionOverrideResource) Metadata(ctx context.Context, req resource.MetadataRequest, resp *resource.MetadataResponse) {
	resp.TypeName = req.ProviderTypeName + "_connector_version_override"
}

// Schema defines the resource attributes.
func (r *ConnectorVersionOverrideResource) Schema(ctx context.Context, req resource.SchemaRequest, resp *resource.SchemaResponse) {
	resp.Schema = schema.Schema{
		MarkdownDescription: `Pins a connector to a specific version at the actor, workspace, or organization scope.

Internally this manages a row in Airbyte's ` + "`scoped_configuration`" + ` table with
` + "`config_key = \"connector_version\"`" + `. It targets the Airbyte internal config API,
which requires instance admin permissions. The bearer token is read from the
` + "`AIRBYTE_BEARER_AUTH`" + ` environment variable; the config API URL is taken from the
` + "`config_server_url`" + ` attribute (with env-var fallback ` + "`AIRBYTE_CONFIG_API_URL`" + `).

This resource is **not available** to ordinary Airbyte Cloud customers — the internal
config API is reachable only by Airbyte staff or by self-hosters with admin credentials.

To pin every actor of a connector definition in a workspace to a specific version:

` + "```" + `hcl
resource "airbyte_connector_version_override" "pin_postgres" {
  config_server_url   = "https://cloud.airbyte.com/api/v1"
  scope_type          = "workspace"
  scope_id            = airbyte_workspace.prod.workspace_id
  actor_definition_id = data.airbyte_connector_configuration.postgres.definition_id
  version             = "3.6.27"
  origin_email        = "admin@example.com"
  description         = "Pin until upstream issue #12345 is resolved"
  reference_url       = "https://github.com/airbytehq/airbyte/issues/12345"
}
` + "```",
		Attributes: map[string]schema.Attribute{
			"id": schema.StringAttribute{
				Computed:            true,
				MarkdownDescription: "UUID of the underlying scoped_configuration row.",
				PlanModifiers: []planmodifier.String{
					stringplanmodifier.UseStateForUnknown(),
				},
			},
			"scope_type": schema.StringAttribute{
				Required:            true,
				MarkdownDescription: "Scope at which the override applies. One of `actor`, `workspace`, or `organization`.",
				Validators: []validator.String{
					stringvalidator.OneOf(validScopeTypes...),
				},
				PlanModifiers: []planmodifier.String{
					stringplanmodifier.RequiresReplace(),
				},
			},
			"scope_id": schema.StringAttribute{
				Required:            true,
				MarkdownDescription: "UUID of the scope target — a specific actor (source/destination), workspace, or organization.",
				PlanModifiers: []planmodifier.String{
					stringplanmodifier.RequiresReplace(),
				},
			},
			"actor_definition_id": schema.StringAttribute{
				Required:            true,
				MarkdownDescription: "UUID of the connector (actor) definition being pinned. Available from `airbyte_connector_configuration.<name>.definition_id`.",
				PlanModifiers: []planmodifier.String{
					stringplanmodifier.RequiresReplace(),
				},
			},
			"version": schema.StringAttribute{
				Required:            true,
				MarkdownDescription: "Docker image tag to pin to (e.g. `3.6.27`).",
			},
			"origin_email": schema.StringAttribute{
				Required:            true,
				Sensitive:           false,
				MarkdownDescription: "Email of the admin creating the override. Recorded in the `origin` field for audit purposes. Origin type is fixed to `user`.",
			},
			"description": schema.StringAttribute{
				Required:            true,
				MarkdownDescription: fmt.Sprintf("Human-readable reason for the override. Must be at least %d characters.", minDescriptionLength),
				Validators: []validator.String{
					stringvalidator.LengthAtLeast(minDescriptionLength),
				},
			},
			"reference_url": schema.StringAttribute{
				Optional:            true,
				MarkdownDescription: "Optional URL with more context (e.g. ticket or runbook).",
			},
			"expires_at": schema.StringAttribute{
				Optional:            true,
				MarkdownDescription: "Optional expiry date in `YYYY-MM-DD` format. After this date, the override stops applying.",
			},
			"config_server_url": schema.StringAttribute{
				Optional:            true,
				MarkdownDescription: "Base URL of the Airbyte internal config API (e.g. `https://cloud.airbyte.com/api/v1`). Falls back to the `AIRBYTE_CONFIG_API_URL` environment variable. Changing this forces resource replacement.",
				PlanModifiers: []planmodifier.String{
					stringplanmodifier.RequiresReplace(),
				},
			},
		},
	}
}

// Configure is a no-op for this resource — auth + URL are read at request time
// from the resource model and environment variables. We deliberately don't take
// the SDK client because the scoped_configuration endpoints aren't part of it.
func (r *ConnectorVersionOverrideResource) Configure(ctx context.Context, req resource.ConfigureRequest, resp *resource.ConfigureResponse) {
}

// Create implements resource.Resource.
func (r *ConnectorVersionOverrideResource) Create(ctx context.Context, req resource.CreateRequest, resp *resource.CreateResponse) {
	var plan ConnectorVersionOverrideResourceModel
	resp.Diagnostics.Append(req.Plan.Get(ctx, &plan)...)
	if resp.Diagnostics.HasError() {
		return
	}

	configURL, err := r.resolveConfigServerURL(plan)
	if err != nil {
		resp.Diagnostics.AddError("Configuration error", err.Error())
		return
	}
	bearer, err := r.resolveBearerToken()
	if err != nil {
		resp.Diagnostics.AddError("Authentication error", err.Error())
		return
	}

	body := scopedConfigCreateRequest{
		Value:        plan.Version.ValueString(),
		ConfigKey:    scopedConfigConnectorVersionKey,
		ScopeID:      plan.ScopeID.ValueString(),
		ScopeType:    plan.ScopeType.ValueString(),
		Origin:       plan.OriginEmail.ValueString(),
		OriginType:   scopedConfigUserOriginType,
		ResourceID:   plan.ActorDefinitionID.ValueString(),
		ResourceType: scopedConfigActorDefinitionResourceType,
		Description:  plan.Description.ValueString(),
		ReferenceURL: optionalString(plan.ReferenceURL),
		ExpiresAt:    optionalString(plan.ExpiresAt),
	}

	var out scopedConfigCreateResponse
	if err := r.postJSON(ctx, configURL, "/scoped_configuration/create", bearer, body, &out); err != nil {
		resp.Diagnostics.AddError("Failed to create connector version override", err.Error())
		return
	}

	r.applyReadToModel(&plan, out.Data)
	resp.Diagnostics.Append(resp.State.Set(ctx, &plan)...)
}

// Read implements resource.Resource.
func (r *ConnectorVersionOverrideResource) Read(ctx context.Context, req resource.ReadRequest, resp *resource.ReadResponse) {
	var state ConnectorVersionOverrideResourceModel
	resp.Diagnostics.Append(req.State.Get(ctx, &state)...)
	if resp.Diagnostics.HasError() {
		return
	}

	configURL, err := r.resolveConfigServerURL(state)
	if err != nil {
		resp.Diagnostics.AddError("Configuration error", err.Error())
		return
	}
	bearer, err := r.resolveBearerToken()
	if err != nil {
		resp.Diagnostics.AddError("Authentication error", err.Error())
		return
	}

	body := map[string]string{"scopedConfigurationId": state.ID.ValueString()}
	var out scopedConfigReadResponse
	statusCode, err := r.postJSONWithStatus(ctx, configURL, "/scoped_configuration/get", bearer, body, &out)
	if err != nil {
		if statusCode == http.StatusNotFound {
			resp.State.RemoveResource(ctx)
			return
		}
		resp.Diagnostics.AddError("Failed to read connector version override", err.Error())
		return
	}

	r.applyReadToModel(&state, out.Data)
	resp.Diagnostics.Append(resp.State.Set(ctx, &state)...)
}

// Update implements resource.Resource. Only mutable fields can change in-place;
// scope_type, scope_id, actor_definition_id, and config_server_url all force replacement.
func (r *ConnectorVersionOverrideResource) Update(ctx context.Context, req resource.UpdateRequest, resp *resource.UpdateResponse) {
	var plan, state ConnectorVersionOverrideResourceModel
	resp.Diagnostics.Append(req.Plan.Get(ctx, &plan)...)
	resp.Diagnostics.Append(req.State.Get(ctx, &state)...)
	if resp.Diagnostics.HasError() {
		return
	}

	configURL, err := r.resolveConfigServerURL(plan)
	if err != nil {
		resp.Diagnostics.AddError("Configuration error", err.Error())
		return
	}
	bearer, err := r.resolveBearerToken()
	if err != nil {
		resp.Diagnostics.AddError("Authentication error", err.Error())
		return
	}

	body := scopedConfigUpdateRequest{
		ScopedConfigurationID: state.ID.ValueString(),
		Data: scopedConfigCreateRequest{
			Value:        plan.Version.ValueString(),
			ConfigKey:    scopedConfigConnectorVersionKey,
			ScopeID:      plan.ScopeID.ValueString(),
			ScopeType:    plan.ScopeType.ValueString(),
			Origin:       plan.OriginEmail.ValueString(),
			OriginType:   scopedConfigUserOriginType,
			ResourceID:   plan.ActorDefinitionID.ValueString(),
			ResourceType: scopedConfigActorDefinitionResourceType,
			Description:  plan.Description.ValueString(),
			ReferenceURL: optionalString(plan.ReferenceURL),
			ExpiresAt:    optionalString(plan.ExpiresAt),
		},
	}

	var out scopedConfigUpdateResponse
	if err := r.postJSON(ctx, configURL, "/scoped_configuration/update", bearer, body, &out); err != nil {
		resp.Diagnostics.AddError("Failed to update connector version override", err.Error())
		return
	}

	r.applyReadToModel(&plan, out.Data)
	resp.Diagnostics.Append(resp.State.Set(ctx, &plan)...)
}

// Delete implements resource.Resource.
func (r *ConnectorVersionOverrideResource) Delete(ctx context.Context, req resource.DeleteRequest, resp *resource.DeleteResponse) {
	var state ConnectorVersionOverrideResourceModel
	resp.Diagnostics.Append(req.State.Get(ctx, &state)...)
	if resp.Diagnostics.HasError() {
		return
	}

	configURL, err := r.resolveConfigServerURL(state)
	if err != nil {
		resp.Diagnostics.AddError("Configuration error", err.Error())
		return
	}
	bearer, err := r.resolveBearerToken()
	if err != nil {
		resp.Diagnostics.AddError("Authentication error", err.Error())
		return
	}

	body := map[string]string{"scopedConfigurationId": state.ID.ValueString()}
	statusCode, err := r.postJSONWithStatus(ctx, configURL, "/scoped_configuration/delete", bearer, body, nil)
	if err != nil && statusCode != http.StatusNotFound {
		resp.Diagnostics.AddError("Failed to delete connector version override", err.Error())
		return
	}
}

// ImportState supports `terraform import airbyte_connector_version_override.x <id>`.
// Subsequent reads use the AIRBYTE_CONFIG_API_URL env var or the resource block's
// config_server_url attribute to locate the config API.
func (r *ConnectorVersionOverrideResource) ImportState(ctx context.Context, req resource.ImportStateRequest, resp *resource.ImportStateResponse) {
	resource.ImportStatePassthroughID(ctx, path.Root("id"), req, resp)
}

func (r *ConnectorVersionOverrideResource) resolveConfigServerURL(model ConnectorVersionOverrideResourceModel) (string, error) {
	if !model.ConfigServerURL.IsNull() && !model.ConfigServerURL.IsUnknown() {
		if v := strings.TrimSpace(model.ConfigServerURL.ValueString()); v != "" {
			return strings.TrimRight(v, "/"), nil
		}
	}
	if v := strings.TrimSpace(os.Getenv(envConfigAPIURL)); v != "" {
		return strings.TrimRight(v, "/"), nil
	}
	return "", fmt.Errorf("config_server_url attribute is unset and %s environment variable is empty", envConfigAPIURL)
}

func (r *ConnectorVersionOverrideResource) resolveBearerToken() (string, error) {
	if v := strings.TrimSpace(os.Getenv(envBearerAuth)); v != "" {
		return v, nil
	}
	return "", fmt.Errorf("bearer token is unset; set the %s environment variable to a token with admin access to the config API", envBearerAuth)
}

func (r *ConnectorVersionOverrideResource) applyReadToModel(model *ConnectorVersionOverrideResourceModel, read scopedConfigRead) {
	model.ID = types.StringValue(read.ID)
	model.ScopeType = types.StringValue(read.ScopeType)
	model.ScopeID = types.StringValue(read.ScopeID)
	model.ActorDefinitionID = types.StringValue(read.ResourceID)
	model.Version = types.StringValue(read.Value)
	model.OriginEmail = types.StringValue(read.Origin)

	if read.Description != "" {
		model.Description = types.StringValue(read.Description)
	}
	if read.ReferenceURL != "" {
		model.ReferenceURL = types.StringValue(read.ReferenceURL)
	} else if model.ReferenceURL.IsUnknown() {
		model.ReferenceURL = types.StringNull()
	}
	if read.ExpiresAt != "" {
		model.ExpiresAt = types.StringValue(read.ExpiresAt)
	} else if model.ExpiresAt.IsUnknown() {
		model.ExpiresAt = types.StringNull()
	}
}

// postJSON wraps postJSONWithStatus and discards the status code on success.
func (r *ConnectorVersionOverrideResource) postJSON(ctx context.Context, baseURL, path, bearer string, body, out any) error {
	_, err := r.postJSONWithStatus(ctx, baseURL, path, bearer, body, out)
	return err
}

// postJSONWithStatus issues a POST against the internal config API at baseURL+path,
// sending the JSON-marshalled body and (if out is non-nil) decoding the response into out.
// Returns the HTTP status code and a non-nil error for any non-2xx response or transport error.
func (r *ConnectorVersionOverrideResource) postJSONWithStatus(ctx context.Context, baseURL, path, bearer string, body, out any) (int, error) {
	buf, err := json.Marshal(body)
	if err != nil {
		return 0, fmt.Errorf("marshal request body: %w", err)
	}

	httpReq, err := http.NewRequestWithContext(ctx, http.MethodPost, baseURL+path, bytes.NewReader(buf))
	if err != nil {
		return 0, fmt.Errorf("build request: %w", err)
	}
	httpReq.Header.Set("Content-Type", "application/json")
	httpReq.Header.Set("Accept", "application/json")
	httpReq.Header.Set("Authorization", "Bearer "+bearer)

	httpResp, err := r.httpClient.Do(httpReq)
	if err != nil {
		return 0, fmt.Errorf("execute request: %w", err)
	}
	defer httpResp.Body.Close()

	respBody, _ := io.ReadAll(httpResp.Body)
	if httpResp.StatusCode < 200 || httpResp.StatusCode >= 300 {
		return httpResp.StatusCode, fmt.Errorf("config API %s returned %d: %s", path, httpResp.StatusCode, truncate(string(respBody), 1024))
	}
	if out != nil && len(respBody) > 0 {
		if err := json.Unmarshal(respBody, out); err != nil {
			return httpResp.StatusCode, fmt.Errorf("decode response from %s: %w", path, err)
		}
	}
	return httpResp.StatusCode, nil
}

func optionalString(v types.String) string {
	if v.IsNull() || v.IsUnknown() {
		return ""
	}
	return v.ValueString()
}

func truncate(s string, max int) string {
	if len(s) <= max {
		return s
	}
	return s[:max] + "...(truncated)"
}
