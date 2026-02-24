package provider

import (
	"context"
	"fmt"

	speakeasy_int64planmodifier "github.com/airbytehq/terraform-provider-airbyte/internal/planmodifiers/int64planmodifier"
	speakeasy_listplanmodifier "github.com/airbytehq/terraform-provider-airbyte/internal/planmodifiers/listplanmodifier"
	speakeasy_objectplanmodifier "github.com/airbytehq/terraform-provider-airbyte/internal/planmodifiers/objectplanmodifier"
	speakeasy_stringplanmodifier "github.com/airbytehq/terraform-provider-airbyte/internal/planmodifiers/stringplanmodifier"
	tfTypes "github.com/airbytehq/terraform-provider-airbyte/internal/provider/types"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/operations"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	speakeasy_objectvalidators "github.com/airbytehq/terraform-provider-airbyte/internal/validators/objectvalidators"
	speakeasy_stringvalidators "github.com/airbytehq/terraform-provider-airbyte/internal/validators/stringvalidators"
	"github.com/hashicorp/terraform-plugin-framework-validators/stringvalidator"
	"github.com/hashicorp/terraform-plugin-framework/diag"
	"github.com/hashicorp/terraform-plugin-framework/path"
	"github.com/hashicorp/terraform-plugin-framework/resource"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema/planmodifier"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema/stringplanmodifier"
	"github.com/hashicorp/terraform-plugin-framework/schema/validator"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

// Ensure provider defined types fully satisfy framework interfaces.
var _ resource.Resource = &GenericSourceResource{}
var _ resource.ResourceWithImportState = &GenericSourceResource{}
var _ resource.ResourceWithModifyPlan = &GenericSourceResource{}

func NewGenericSourceResource() resource.Resource {
	return &GenericSourceResource{}
}

// GenericSourceResource implements the airbyte_source resource with structured
// config + sensitive_config inputs instead of a single JSON string.
type GenericSourceResource struct {
	client *sdk.SDK
}

// GenericSourceResourceModel describes the resource data model with structured
// configuration inputs.
type GenericSourceResourceModel struct {
	Config              types.Dynamic                       `tfsdk:"config"`
	SensitiveConfig     types.Dynamic                       `tfsdk:"sensitive_config"`
	SensitiveConfigHash types.String                        `tfsdk:"sensitive_config_hash"`
	CreatedAt           types.Int64                         `tfsdk:"created_at"`
	DefinitionID        types.String                        `tfsdk:"definition_id"`
	Name                types.String                        `tfsdk:"name"`
	ResourceAllocation  *tfTypes.ScopedResourceRequirements `tfsdk:"resource_allocation"`
	SecretID            types.String                        `tfsdk:"secret_id"`
	SourceID            types.String                        `tfsdk:"source_id"`
	SourceType          types.String                        `tfsdk:"source_type"`
	WorkspaceID         types.String                        `tfsdk:"workspace_id"`
}

func (r *GenericSourceResource) Metadata(ctx context.Context, req resource.MetadataRequest, resp *resource.MetadataResponse) {
	resp.TypeName = req.ProviderTypeName + "_source"
}

func (r *GenericSourceResource) Schema(ctx context.Context, req resource.SchemaRequest, resp *resource.SchemaResponse) {
	resp.Schema = schema.Schema{
		MarkdownDescription: "Source Resource",
		Attributes: map[string]schema.Attribute{
			"config": schema.DynamicAttribute{
				Required:            true,
				MarkdownDescription: "Non-sensitive configuration values for the source as an HCL object. These values are visible in Terraform plan output. Keys here are deep-merged with `sensitive_config` before being sent to the API.",
			},
			"sensitive_config": schema.DynamicAttribute{
				Optional:            true,
				Sensitive:           true,
				WriteOnly:           true,
				MarkdownDescription: "Sensitive configuration values (API keys, passwords, etc.) as an HCL object. These values are write-only and never stored in Terraform state. Keys here are deep-merged with (and override) keys in `config`.",
			},
			"sensitive_config_hash": schema.StringAttribute{
				Computed:            true,
				MarkdownDescription: "SHA-256 hash of the `sensitive_config` attribute. Used to detect secret rotation: when secrets change, this hash changes, triggering an update.",
				PlanModifiers: []planmodifier.String{
					speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
				},
			},
			"created_at": schema.Int64Attribute{
				Computed: true,
				PlanModifiers: []planmodifier.Int64{
					speakeasy_int64planmodifier.SuppressDiff(speakeasy_int64planmodifier.ExplicitSuppress),
				},
			},
			"definition_id": schema.StringAttribute{
				Computed: true,
				Optional: true,
				PlanModifiers: []planmodifier.String{
					stringplanmodifier.RequiresReplaceIfConfigured(),
					speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
				},
				Description: `The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided. Requires replacement if changed.`,
			},
			"name": schema.StringAttribute{
				Required: true,
				PlanModifiers: []planmodifier.String{
					speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
				},
				Description: `Name of the source e.g. dev-mysql-instance.`,
			},
			"resource_allocation": schema.SingleNestedAttribute{
				Computed: true,
				Optional: true,
				PlanModifiers: []planmodifier.Object{
					speakeasy_objectplanmodifier.SuppressDiff(speakeasy_objectplanmodifier.ExplicitSuppress),
				},
				Attributes: map[string]schema.Attribute{
					"default": schema.SingleNestedAttribute{
						Computed: true,
						Optional: true,
						PlanModifiers: []planmodifier.Object{
							speakeasy_objectplanmodifier.SuppressDiff(speakeasy_objectplanmodifier.ExplicitSuppress),
						},
						Attributes: map[string]schema.Attribute{
							"cpu_limit": schema.StringAttribute{
								Computed: true,
								Optional: true,
								PlanModifiers: []planmodifier.String{
									speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
								},
							},
							"cpu_request": schema.StringAttribute{
								Computed: true,
								Optional: true,
								PlanModifiers: []planmodifier.String{
									speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
								},
							},
							"ephemeral_storage_limit": schema.StringAttribute{
								Computed: true,
								Optional: true,
								PlanModifiers: []planmodifier.String{
									speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
								},
							},
							"ephemeral_storage_request": schema.StringAttribute{
								Computed: true,
								Optional: true,
								PlanModifiers: []planmodifier.String{
									speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
								},
							},
							"memory_limit": schema.StringAttribute{
								Computed: true,
								Optional: true,
								PlanModifiers: []planmodifier.String{
									speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
								},
							},
							"memory_request": schema.StringAttribute{
								Computed: true,
								Optional: true,
								PlanModifiers: []planmodifier.String{
									speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
								},
							},
						},
						Description: `optional resource requirements to run workers (blank for unbounded allocations)`,
					},
					"job_specific": schema.ListNestedAttribute{
						Computed: true,
						Optional: true,
						PlanModifiers: []planmodifier.List{
							speakeasy_listplanmodifier.SuppressDiff(speakeasy_listplanmodifier.ExplicitSuppress),
						},
						NestedObject: schema.NestedAttributeObject{
							Validators: []validator.Object{
								speakeasy_objectvalidators.NotNull(),
							},
							PlanModifiers: []planmodifier.Object{
								speakeasy_objectplanmodifier.SuppressDiff(speakeasy_objectplanmodifier.ExplicitSuppress),
							},
							Attributes: map[string]schema.Attribute{
								"job_type": schema.StringAttribute{
									Computed: true,
									Optional: true,
									PlanModifiers: []planmodifier.String{
										speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
									},
									Description: `enum that describes the different types of jobs that the platform runs. Not Null; must be one of ["get_spec", "check_connection", "discover_schema", "sync", "reset_connection", "connection_updater", "replicate"]`,
									Validators: []validator.String{
										speakeasy_stringvalidators.NotNull(),
										stringvalidator.OneOf(
											"get_spec",
											"check_connection",
											"discover_schema",
											"sync",
											"reset_connection",
											"connection_updater",
											"replicate",
										),
									},
								},
								"resource_requirements": schema.SingleNestedAttribute{
									Computed: true,
									Optional: true,
									PlanModifiers: []planmodifier.Object{
										speakeasy_objectplanmodifier.SuppressDiff(speakeasy_objectplanmodifier.ExplicitSuppress),
									},
									Attributes: map[string]schema.Attribute{
										"cpu_limit": schema.StringAttribute{
											Computed: true,
											Optional: true,
											PlanModifiers: []planmodifier.String{
												speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
											},
										},
										"cpu_request": schema.StringAttribute{
											Computed: true,
											Optional: true,
											PlanModifiers: []planmodifier.String{
												speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
											},
										},
										"ephemeral_storage_limit": schema.StringAttribute{
											Computed: true,
											Optional: true,
											PlanModifiers: []planmodifier.String{
												speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
											},
										},
										"ephemeral_storage_request": schema.StringAttribute{
											Computed: true,
											Optional: true,
											PlanModifiers: []planmodifier.String{
												speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
											},
										},
										"memory_limit": schema.StringAttribute{
											Computed: true,
											Optional: true,
											PlanModifiers: []planmodifier.String{
												speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
											},
										},
										"memory_request": schema.StringAttribute{
											Computed: true,
											Optional: true,
											PlanModifiers: []planmodifier.String{
												speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
											},
										},
									},
									Description: `optional resource requirements to run workers (blank for unbounded allocations). Not Null`,
									Validators: []validator.Object{
										speakeasy_objectvalidators.NotNull(),
									},
								},
							},
						},
					},
				},
				Description: `actor or actor definition specific resource requirements. if default is set, these are the requirements that should be set for ALL jobs run for this actor definition. it is overriden by the job type specific configurations. if not set, the platform will use defaults. these values will be overriden by configuration at the connection level.`,
			},
			"secret_id": schema.StringAttribute{
				Optional: true,
				PlanModifiers: []planmodifier.String{
					stringplanmodifier.RequiresReplaceIfConfigured(),
				},
				Description: `Optional secretID obtained through the OAuth redirect flow. Requires replacement if changed.`,
			},
			"source_id": schema.StringAttribute{
				Computed: true,
				PlanModifiers: []planmodifier.String{
					speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
				},
			},
			"source_type": schema.StringAttribute{
				Computed: true,
				PlanModifiers: []planmodifier.String{
					speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
				},
			},
			"workspace_id": schema.StringAttribute{
				Required: true,
				PlanModifiers: []planmodifier.String{
					stringplanmodifier.RequiresReplaceIfConfigured(),
					speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
				},
				Description: `Requires replacement if changed.`,
			},
		},
	}
}

func (r *GenericSourceResource) Configure(ctx context.Context, req resource.ConfigureRequest, resp *resource.ConfigureResponse) {
	if req.ProviderData == nil {
		return
	}
	client, ok := req.ProviderData.(*sdk.SDK)
	if !ok {
		resp.Diagnostics.AddError(
			"Unexpected Resource Configure Type",
			fmt.Sprintf("Expected *sdk.SDK, got: %T. Please report this issue to the provider developers.", req.ProviderData),
		)
		return
	}
	r.client = client
}

// ModifyPlan computes the sensitive_config_hash during planning so that
// Terraform can detect secret rotation without storing plaintext secrets.
func (r *GenericSourceResource) ModifyPlan(ctx context.Context, req resource.ModifyPlanRequest, resp *resource.ModifyPlanResponse) {
	// On destroy, nothing to do.
	if req.Plan.Raw.IsNull() {
		return
	}

	var plan GenericSourceResourceModel
	resp.Diagnostics.Append(req.Plan.Get(ctx, &plan)...)
	if resp.Diagnostics.HasError() {
		return
	}

	// Compute hash of sensitive_config from the user's configuration.
	// Write-only values are available in req.Config during plan.
	var configModel GenericSourceResourceModel
	resp.Diagnostics.Append(req.Config.Get(ctx, &configModel)...)
	if resp.Diagnostics.HasError() {
		return
	}

	hash, err := computeSensitiveConfigHash(configModel.SensitiveConfig)
	if err != nil {
		resp.Diagnostics.AddError("Failed to compute sensitive_config_hash", err.Error())
		return
	}

	if hash != "" {
		plan.SensitiveConfigHash = types.StringValue(hash)
	} else {
		plan.SensitiveConfigHash = types.StringValue("")
	}

	resp.Diagnostics.Append(resp.Plan.Set(ctx, &plan)...)
}

func (r *GenericSourceResource) Create(ctx context.Context, req resource.CreateRequest, resp *resource.CreateResponse) {
	var plan GenericSourceResourceModel
	resp.Diagnostics.Append(req.Plan.Get(ctx, &plan)...)
	if resp.Diagnostics.HasError() {
		return
	}

	// Read sensitive_config from the config (write-only values available here).
	var configModel GenericSourceResourceModel
	resp.Diagnostics.Append(req.Config.Get(ctx, &configModel)...)
	if resp.Diagnostics.HasError() {
		return
	}

	// Merge config + sensitive_config into a single configuration object for the API.
	mergedConfig, err := mergeConfigAndSensitiveConfig(plan.Config, configModel.SensitiveConfig)
	if err != nil {
		resp.Diagnostics.AddError("Failed to merge configuration", err.Error())
		return
	}

	// Build the create request.
	createReq := &shared.SourceCreateRequest{
		Name:          plan.Name.ValueString(),
		WorkspaceID:   plan.WorkspaceID.ValueString(),
		Configuration: mergedConfig,
	}
	if !plan.DefinitionID.IsUnknown() && !plan.DefinitionID.IsNull() {
		defID := plan.DefinitionID.ValueString()
		createReq.DefinitionID = &defID
	}
	if !plan.SecretID.IsUnknown() && !plan.SecretID.IsNull() {
		secID := plan.SecretID.ValueString()
		createReq.SecretID = &secID
	}
	createReq.ResourceAllocation = genericSourceResourceAllocationToSDK(plan.ResourceAllocation)

	// Call the API.
	res, err := r.client.Sources.CreateSource(ctx, createReq)
	if err != nil {
		resp.Diagnostics.AddError("failure to invoke API", err.Error())
		if res != nil && res.RawResponse != nil {
			resp.Diagnostics.AddError("unexpected http request/response", debugResponse(res.RawResponse))
		}
		return
	}
	if res == nil {
		resp.Diagnostics.AddError("unexpected response from API", fmt.Sprintf("%v", res))
		return
	}
	if res.StatusCode != 200 {
		resp.Diagnostics.AddError(fmt.Sprintf("unexpected response from API. Got an unexpected response code %v", res.StatusCode), debugResponse(res.RawResponse))
		return
	}
	if res.SourceResponse == nil {
		resp.Diagnostics.AddError("unexpected response from API. Got an unexpected response body", debugResponse(res.RawResponse))
		return
	}

	// Populate state from API response.
	resp.Diagnostics.Append(r.refreshState(ctx, &plan, res.SourceResponse)...)
	if resp.Diagnostics.HasError() {
		return
	}

	// Compute and store the sensitive_config_hash.
	hash, err := computeSensitiveConfigHash(configModel.SensitiveConfig)
	if err != nil {
		resp.Diagnostics.AddError("Failed to compute sensitive_config_hash", err.Error())
		return
	}
	plan.SensitiveConfigHash = types.StringValue(hash)

	resp.Diagnostics.Append(resp.State.Set(ctx, &plan)...)
}

func (r *GenericSourceResource) Read(ctx context.Context, req resource.ReadRequest, resp *resource.ReadResponse) {
	var state GenericSourceResourceModel
	resp.Diagnostics.Append(req.State.Get(ctx, &state)...)
	if resp.Diagnostics.HasError() {
		return
	}

	getReq := operations.GetSourceRequest{
		SourceID: state.SourceID.ValueString(),
	}

	res, err := r.client.Sources.GetSource(ctx, getReq)
	if err != nil {
		resp.Diagnostics.AddError("failure to invoke API", err.Error())
		if res != nil && res.RawResponse != nil {
			resp.Diagnostics.AddError("unexpected http request/response", debugResponse(res.RawResponse))
		}
		return
	}
	if res == nil {
		resp.Diagnostics.AddError("unexpected response from API", fmt.Sprintf("%v", res))
		return
	}
	if res.StatusCode == 404 {
		resp.State.RemoveResource(ctx)
		return
	}
	if res.StatusCode != 200 {
		resp.Diagnostics.AddError(fmt.Sprintf("unexpected response from API. Got an unexpected response code %v", res.StatusCode), debugResponse(res.RawResponse))
		return
	}
	if res.SourceResponse == nil {
		resp.Diagnostics.AddError("unexpected response from API. Got an unexpected response body", debugResponse(res.RawResponse))
		return
	}

	// Refresh state from API response, preserving config from state.
	resp.Diagnostics.Append(r.refreshState(ctx, &state, res.SourceResponse)...)
	if resp.Diagnostics.HasError() {
		return
	}

	// sensitive_config_hash is preserved from prior state (not recomputed on Read
	// since we don't have the plaintext secrets).

	resp.Diagnostics.Append(resp.State.Set(ctx, &state)...)
}

func (r *GenericSourceResource) Update(ctx context.Context, req resource.UpdateRequest, resp *resource.UpdateResponse) {
	var plan GenericSourceResourceModel
	resp.Diagnostics.Append(req.Plan.Get(ctx, &plan)...)
	if resp.Diagnostics.HasError() {
		return
	}

	// Read sensitive_config from the config (write-only values available here).
	var configModel GenericSourceResourceModel
	resp.Diagnostics.Append(req.Config.Get(ctx, &configModel)...)
	if resp.Diagnostics.HasError() {
		return
	}

	// Merge config + sensitive_config.
	mergedConfig, err := mergeConfigAndSensitiveConfig(plan.Config, configModel.SensitiveConfig)
	if err != nil {
		resp.Diagnostics.AddError("Failed to merge configuration", err.Error())
		return
	}

	// Build the put request.
	putReq := &operations.PutSourceRequest{
		SourceID: plan.SourceID.ValueString(),
		SourcePutRequest: &shared.SourcePutRequest{
			Name:               plan.Name.ValueString(),
			Configuration:      mergedConfig,
			ResourceAllocation: genericSourceResourceAllocationToSDK(plan.ResourceAllocation),
		},
	}

	res, err := r.client.Sources.PutSource(ctx, *putReq)
	if err != nil {
		resp.Diagnostics.AddError("failure to invoke API", err.Error())
		if res != nil && res.RawResponse != nil {
			resp.Diagnostics.AddError("unexpected http request/response", debugResponse(res.RawResponse))
		}
		return
	}
	if res == nil {
		resp.Diagnostics.AddError("unexpected response from API", fmt.Sprintf("%v", res))
		return
	}
	if res.StatusCode != 200 {
		resp.Diagnostics.AddError(fmt.Sprintf("unexpected response from API. Got an unexpected response code %v", res.StatusCode), debugResponse(res.RawResponse))
		return
	}
	if res.SourceResponse == nil {
		resp.Diagnostics.AddError("unexpected response from API. Got an unexpected response body", debugResponse(res.RawResponse))
		return
	}

	// Populate state from API response.
	resp.Diagnostics.Append(r.refreshState(ctx, &plan, res.SourceResponse)...)
	if resp.Diagnostics.HasError() {
		return
	}

	// Compute and store the sensitive_config_hash.
	hash, err := computeSensitiveConfigHash(configModel.SensitiveConfig)
	if err != nil {
		resp.Diagnostics.AddError("Failed to compute sensitive_config_hash", err.Error())
		return
	}
	plan.SensitiveConfigHash = types.StringValue(hash)

	resp.Diagnostics.Append(resp.State.Set(ctx, &plan)...)
}

func (r *GenericSourceResource) Delete(ctx context.Context, req resource.DeleteRequest, resp *resource.DeleteResponse) {
	var state GenericSourceResourceModel
	resp.Diagnostics.Append(req.State.Get(ctx, &state)...)
	if resp.Diagnostics.HasError() {
		return
	}

	deleteReq := operations.DeleteSourceRequest{
		SourceID: state.SourceID.ValueString(),
	}

	res, err := r.client.Sources.DeleteSource(ctx, deleteReq)
	if err != nil {
		resp.Diagnostics.AddError("failure to invoke API", err.Error())
		if res != nil && res.RawResponse != nil {
			resp.Diagnostics.AddError("unexpected http request/response", debugResponse(res.RawResponse))
		}
		return
	}
	if res == nil {
		resp.Diagnostics.AddError("unexpected response from API", fmt.Sprintf("%v", res))
		return
	}
	switch res.StatusCode {
	case 204, 404:
		break
	default:
		resp.Diagnostics.AddError(fmt.Sprintf("unexpected response from API. Got an unexpected response code %v", res.StatusCode), debugResponse(res.RawResponse))
		return
	}
}

func (r *GenericSourceResource) ImportState(ctx context.Context, req resource.ImportStateRequest, resp *resource.ImportStateResponse) {
	resp.Diagnostics.Append(resp.State.SetAttribute(ctx, path.Root("source_id"), req.ID)...)
}

// refreshState updates the model from an API SourceResponse, preserving the
// user-provided config (since the API may return redacted secrets).
func (r *GenericSourceResource) refreshState(ctx context.Context, state *GenericSourceResourceModel, resp *shared.SourceResponse) diag.Diagnostics {
	var diags diag.Diagnostics

	if resp == nil {
		return diags
	}

	// Update non-config fields from the API response.
	state.SourceID = types.StringValue(resp.SourceID)
	state.Name = types.StringValue(resp.Name)
	state.SourceType = types.StringValue(resp.SourceType)
	state.DefinitionID = types.StringValue(resp.DefinitionID)
	state.WorkspaceID = types.StringValue(resp.WorkspaceID)
	state.CreatedAt = types.Int64Value(resp.CreatedAt)

	// Convert API configuration to Dynamic for state. On Read, the API may
	// return redacted secrets ("***"). We store whatever the API returns as
	// the config in state. Since config is the non-sensitive portion, the user
	// controls what goes in it and Terraform will detect drift in non-secret
	// fields. Secret fields live in sensitive_config (write-only, never in state).
	apiConfig, err := apiConfigToDynamic(resp.Configuration)
	if err != nil {
		diags.AddWarning("Could not parse API configuration", err.Error())
		// On error, preserve existing config from state.
	} else {
		state.Config = apiConfig
	}

	// Resource allocation.
	if resp.ResourceAllocation == nil {
		state.ResourceAllocation = nil
	} else {
		state.ResourceAllocation = &tfTypes.ScopedResourceRequirements{}
		if resp.ResourceAllocation.Default == nil {
			state.ResourceAllocation.Default = nil
		} else {
			state.ResourceAllocation.Default = &tfTypes.ResourceRequirements{}
			state.ResourceAllocation.Default.CPULimit = types.StringPointerValue(resp.ResourceAllocation.Default.CPULimit)
			state.ResourceAllocation.Default.CPURequest = types.StringPointerValue(resp.ResourceAllocation.Default.CPURequest)
			state.ResourceAllocation.Default.EphemeralStorageLimit = types.StringPointerValue(resp.ResourceAllocation.Default.EphemeralStorageLimit)
			state.ResourceAllocation.Default.EphemeralStorageRequest = types.StringPointerValue(resp.ResourceAllocation.Default.EphemeralStorageRequest)
			state.ResourceAllocation.Default.MemoryLimit = types.StringPointerValue(resp.ResourceAllocation.Default.MemoryLimit)
			state.ResourceAllocation.Default.MemoryRequest = types.StringPointerValue(resp.ResourceAllocation.Default.MemoryRequest)
		}
		state.ResourceAllocation.JobSpecific = []tfTypes.JobTypeResourceLimit{}
		for _, js := range resp.ResourceAllocation.JobSpecific {
			item := tfTypes.JobTypeResourceLimit{
				JobType:              types.StringValue(string(js.JobType)),
				ResourceRequirements: &tfTypes.ResourceRequirements{},
			}
			item.ResourceRequirements.CPULimit = types.StringPointerValue(js.ResourceRequirements.CPULimit)
			item.ResourceRequirements.CPURequest = types.StringPointerValue(js.ResourceRequirements.CPURequest)
			item.ResourceRequirements.EphemeralStorageLimit = types.StringPointerValue(js.ResourceRequirements.EphemeralStorageLimit)
			item.ResourceRequirements.EphemeralStorageRequest = types.StringPointerValue(js.ResourceRequirements.EphemeralStorageRequest)
			item.ResourceRequirements.MemoryLimit = types.StringPointerValue(js.ResourceRequirements.MemoryLimit)
			item.ResourceRequirements.MemoryRequest = types.StringPointerValue(js.ResourceRequirements.MemoryRequest)
			state.ResourceAllocation.JobSpecific = append(state.ResourceAllocation.JobSpecific, item)
		}
	}

	return diags
}

// genericSourceResourceAllocationToSDK converts the Terraform model's resource
// allocation to the SDK shared type.
func genericSourceResourceAllocationToSDK(ra *tfTypes.ScopedResourceRequirements) *shared.ScopedResourceRequirements {
	if ra == nil {
		return nil
	}
	result := &shared.ScopedResourceRequirements{}
	if ra.Default != nil {
		result.Default = &shared.ResourceRequirements{
			CPULimit:                optionalString(ra.Default.CPULimit),
			CPURequest:              optionalString(ra.Default.CPURequest),
			MemoryLimit:             optionalString(ra.Default.MemoryLimit),
			MemoryRequest:           optionalString(ra.Default.MemoryRequest),
			EphemeralStorageLimit:   optionalString(ra.Default.EphemeralStorageLimit),
			EphemeralStorageRequest: optionalString(ra.Default.EphemeralStorageRequest),
		}
	}
	for _, js := range ra.JobSpecific {
		item := shared.JobTypeResourceLimit{
			JobType: shared.JobType(js.JobType.ValueString()),
			ResourceRequirements: shared.ResourceRequirements{
				CPULimit:                optionalString(js.ResourceRequirements.CPULimit),
				CPURequest:              optionalString(js.ResourceRequirements.CPURequest),
				MemoryLimit:             optionalString(js.ResourceRequirements.MemoryLimit),
				MemoryRequest:           optionalString(js.ResourceRequirements.MemoryRequest),
				EphemeralStorageLimit:   optionalString(js.ResourceRequirements.EphemeralStorageLimit),
				EphemeralStorageRequest: optionalString(js.ResourceRequirements.EphemeralStorageRequest),
			},
		}
		result.JobSpecific = append(result.JobSpecific, item)
	}
	return result
}

// optionalString returns a *string from a types.String, or nil if null/unknown.
func optionalString(s types.String) *string {
	if s.IsUnknown() || s.IsNull() {
		return nil
	}
	v := s.ValueString()
	return &v
}
