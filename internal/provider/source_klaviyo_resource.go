// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

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
	"github.com/airbytehq/terraform-provider-airbyte/internal/validators"
	"github.com/hashicorp/terraform-plugin-framework-validators/int64validator"
	"github.com/hashicorp/terraform-plugin-framework-validators/stringvalidator"
	"github.com/hashicorp/terraform-plugin-framework/path"
	"github.com/hashicorp/terraform-plugin-framework/resource"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema/int64default"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema/planmodifier"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema/stringplanmodifier"
	"github.com/hashicorp/terraform-plugin-framework/schema/validator"
	"github.com/hashicorp/terraform-plugin-framework/types"
	"github.com/hashicorp/terraform-plugin-framework/types/basetypes"
)

// Ensure provider defined types fully satisfy framework interfaces.
var _ resource.Resource = &SourceKlaviyoResource{}
var _ resource.ResourceWithImportState = &SourceKlaviyoResource{}

func NewSourceKlaviyoResource() resource.Resource {
	return &SourceKlaviyoResource{}
}

// SourceKlaviyoResource defines the resource implementation.
type SourceKlaviyoResource struct {
	client *sdk.SDK
}

// SourceKlaviyoResourceModel describes the resource data model.
type SourceKlaviyoResourceModel struct {
	Configuration      tfTypes.SourceKlaviyo               `tfsdk:"configuration"`
	CreatedAt          types.Int64                         `tfsdk:"created_at"`
	DefinitionID       types.String                        `tfsdk:"definition_id"`
	Name               types.String                        `tfsdk:"name"`
	ResourceAllocation *tfTypes.ScopedResourceRequirements `tfsdk:"resource_allocation"`
	SecretID           types.String                        `tfsdk:"secret_id"`
	SourceID           types.String                        `tfsdk:"source_id"`
	SourceType         types.String                        `tfsdk:"source_type"`
	WorkspaceID        types.String                        `tfsdk:"workspace_id"`
}

func (r *SourceKlaviyoResource) Metadata(ctx context.Context, req resource.MetadataRequest, resp *resource.MetadataResponse) {
	resp.TypeName = req.ProviderTypeName + "_source_klaviyo"
}

func (r *SourceKlaviyoResource) Schema(ctx context.Context, req resource.SchemaRequest, resp *resource.SchemaResponse) {
	resp.Schema = schema.Schema{
		MarkdownDescription: "SourceKlaviyo Resource",
		Attributes: map[string]schema.Attribute{
			"configuration": schema.SingleNestedAttribute{
				Required: true,
				PlanModifiers: []planmodifier.Object{
					speakeasy_objectplanmodifier.SuppressDiff(speakeasy_objectplanmodifier.ExplicitSuppress),
				},
				Attributes: map[string]schema.Attribute{
					"api_key": schema.StringAttribute{
						Required:    true,
						Sensitive:   true,
						Description: `Klaviyo API Key. See our <a href="https://docs.airbyte.com/integrations/sources/klaviyo">docs</a> if you need help finding this key.`,
					},
					"disable_fetching_predictive_analytics": schema.BoolAttribute{
						Optional:    true,
						Description: `Certain streams like the profiles stream can retrieve predictive analytics data from Klaviyo's API. However, at high volume, this can lead to service availability issues on the API which can be improved by not fetching this field. WARNING: Enabling this setting will stop the  "predictive_analytics" column from being populated in your downstream destination.`,
					},
					"num_workers": schema.Int64Attribute{
						Computed:    true,
						Optional:    true,
						Default:     int64default.StaticInt64(10),
						Description: `The number of worker threads to use for the sync. The performance upper boundary is based on the limit of your Klaviyo plan. More info about the rate limit plan tiers can be found on Klaviyo's API <a href="https://developers.klaviyo.com/en/docs/rate_limits_and_error_handling">docs</a>. Default: 10`,
						Validators: []validator.Int64{
							int64validator.Between(1, 50),
						},
					},
					"start_date": schema.StringAttribute{
						Optional:    true,
						Description: `UTC date and time in the format 2017-01-25T00:00:00Z. Any data before this date will not be replicated. This field is optional - if not provided, all data will be replicated.`,
						Validators: []validator.String{
							validators.IsRFC3339(),
						},
					},
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
				PlanModifiers: []planmodifier.Object{
					speakeasy_objectplanmodifier.SuppressDiff(speakeasy_objectplanmodifier.ExplicitSuppress),
				},
				Attributes: map[string]schema.Attribute{
					"default": schema.SingleNestedAttribute{
						Computed: true,
						PlanModifiers: []planmodifier.Object{
							speakeasy_objectplanmodifier.SuppressDiff(speakeasy_objectplanmodifier.ExplicitSuppress),
						},
						Attributes: map[string]schema.Attribute{
							"cpu_limit": schema.StringAttribute{
								Computed: true,
								PlanModifiers: []planmodifier.String{
									speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
								},
							},
							"cpu_request": schema.StringAttribute{
								Computed: true,
								PlanModifiers: []planmodifier.String{
									speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
								},
							},
							"ephemeral_storage_limit": schema.StringAttribute{
								Computed: true,
								PlanModifiers: []planmodifier.String{
									speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
								},
							},
							"ephemeral_storage_request": schema.StringAttribute{
								Computed: true,
								PlanModifiers: []planmodifier.String{
									speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
								},
							},
							"memory_limit": schema.StringAttribute{
								Computed: true,
								PlanModifiers: []planmodifier.String{
									speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
								},
							},
							"memory_request": schema.StringAttribute{
								Computed: true,
								PlanModifiers: []planmodifier.String{
									speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
								},
							},
						},
						Description: `optional resource requirements to run workers (blank for unbounded allocations)`,
					},
					"job_specific": schema.ListNestedAttribute{
						Computed: true,
						PlanModifiers: []planmodifier.List{
							speakeasy_listplanmodifier.SuppressDiff(speakeasy_listplanmodifier.ExplicitSuppress),
						},
						NestedObject: schema.NestedAttributeObject{
							PlanModifiers: []planmodifier.Object{
								speakeasy_objectplanmodifier.SuppressDiff(speakeasy_objectplanmodifier.ExplicitSuppress),
							},
							Attributes: map[string]schema.Attribute{
								"job_type": schema.StringAttribute{
									Computed: true,
									PlanModifiers: []planmodifier.String{
										speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
									},
									Description: `enum that describes the different types of jobs that the platform runs. must be one of ["get_spec", "check_connection", "discover_schema", "sync", "reset_connection", "connection_updater", "replicate"]`,
									Validators: []validator.String{
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
									PlanModifiers: []planmodifier.Object{
										speakeasy_objectplanmodifier.SuppressDiff(speakeasy_objectplanmodifier.ExplicitSuppress),
									},
									Attributes: map[string]schema.Attribute{
										"cpu_limit": schema.StringAttribute{
											Computed: true,
											PlanModifiers: []planmodifier.String{
												speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
											},
										},
										"cpu_request": schema.StringAttribute{
											Computed: true,
											PlanModifiers: []planmodifier.String{
												speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
											},
										},
										"ephemeral_storage_limit": schema.StringAttribute{
											Computed: true,
											PlanModifiers: []planmodifier.String{
												speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
											},
										},
										"ephemeral_storage_request": schema.StringAttribute{
											Computed: true,
											PlanModifiers: []planmodifier.String{
												speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
											},
										},
										"memory_limit": schema.StringAttribute{
											Computed: true,
											PlanModifiers: []planmodifier.String{
												speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
											},
										},
										"memory_request": schema.StringAttribute{
											Computed: true,
											PlanModifiers: []planmodifier.String{
												speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
											},
										},
									},
									Description: `optional resource requirements to run workers (blank for unbounded allocations)`,
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
				Description: `Optional secretID obtained through the public API OAuth redirect flow. Requires replacement if changed.`,
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
					speakeasy_stringplanmodifier.SuppressDiff(speakeasy_stringplanmodifier.ExplicitSuppress),
				},
			},
		},
	}
}

func (r *SourceKlaviyoResource) Configure(ctx context.Context, req resource.ConfigureRequest, resp *resource.ConfigureResponse) {
	// Prevent panic if the provider has not been configured.
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

func (r *SourceKlaviyoResource) Create(ctx context.Context, req resource.CreateRequest, resp *resource.CreateResponse) {
	var data *SourceKlaviyoResourceModel
	var plan types.Object

	resp.Diagnostics.Append(req.Plan.Get(ctx, &plan)...)
	if resp.Diagnostics.HasError() {
		return
	}

	resp.Diagnostics.Append(plan.As(ctx, &data, basetypes.ObjectAsOptions{
		UnhandledNullAsEmpty:    true,
		UnhandledUnknownAsEmpty: true,
	})...)

	if resp.Diagnostics.HasError() {
		return
	}

	request := data.ToSharedSourceKlaviyoCreateRequest()
	res, err := r.client.Sources.CreateSourceKlaviyo(ctx, request)
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
	if !(res.SourceResponse != nil) {
		resp.Diagnostics.AddError("unexpected response from API. Got an unexpected response body", debugResponse(res.RawResponse))
		return
	}
	data.RefreshFromSharedSourceResponse(res.SourceResponse)
	refreshPlan(ctx, plan, &data, resp.Diagnostics)
	var sourceID string
	sourceID = data.SourceID.ValueString()

	request1 := operations.GetSourceKlaviyoRequest{
		SourceID: sourceID,
	}
	res1, err := r.client.Sources.GetSourceKlaviyo(ctx, request1)
	if err != nil {
		resp.Diagnostics.AddError("failure to invoke API", err.Error())
		if res1 != nil && res1.RawResponse != nil {
			resp.Diagnostics.AddError("unexpected http request/response", debugResponse(res1.RawResponse))
		}
		return
	}
	if res1 == nil {
		resp.Diagnostics.AddError("unexpected response from API", fmt.Sprintf("%v", res1))
		return
	}
	if res1.StatusCode != 200 {
		resp.Diagnostics.AddError(fmt.Sprintf("unexpected response from API. Got an unexpected response code %v", res1.StatusCode), debugResponse(res1.RawResponse))
		return
	}
	if !(res1.SourceResponse != nil) {
		resp.Diagnostics.AddError("unexpected response from API. Got an unexpected response body", debugResponse(res1.RawResponse))
		return
	}
	data.RefreshFromSharedSourceResponse(res1.SourceResponse)
	refreshPlan(ctx, plan, &data, resp.Diagnostics)

	// Save updated data into Terraform state
	resp.Diagnostics.Append(resp.State.Set(ctx, &data)...)
}

func (r *SourceKlaviyoResource) Read(ctx context.Context, req resource.ReadRequest, resp *resource.ReadResponse) {
	var data *SourceKlaviyoResourceModel
	var item types.Object

	resp.Diagnostics.Append(req.State.Get(ctx, &item)...)
	if resp.Diagnostics.HasError() {
		return
	}

	resp.Diagnostics.Append(item.As(ctx, &data, basetypes.ObjectAsOptions{
		UnhandledNullAsEmpty:    true,
		UnhandledUnknownAsEmpty: true,
	})...)

	if resp.Diagnostics.HasError() {
		return
	}

	var sourceID string
	sourceID = data.SourceID.ValueString()

	request := operations.GetSourceKlaviyoRequest{
		SourceID: sourceID,
	}
	res, err := r.client.Sources.GetSourceKlaviyo(ctx, request)
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
	if !(res.SourceResponse != nil) {
		resp.Diagnostics.AddError("unexpected response from API. Got an unexpected response body", debugResponse(res.RawResponse))
		return
	}
	data.RefreshFromSharedSourceResponse(res.SourceResponse)

	// Save updated data into Terraform state
	resp.Diagnostics.Append(resp.State.Set(ctx, &data)...)
}

func (r *SourceKlaviyoResource) Update(ctx context.Context, req resource.UpdateRequest, resp *resource.UpdateResponse) {
	var data *SourceKlaviyoResourceModel
	var plan types.Object

	resp.Diagnostics.Append(req.Plan.Get(ctx, &plan)...)
	if resp.Diagnostics.HasError() {
		return
	}

	merge(ctx, req, resp, &data)
	if resp.Diagnostics.HasError() {
		return
	}

	var sourceID string
	sourceID = data.SourceID.ValueString()

	sourceKlaviyoPutRequest := data.ToSharedSourceKlaviyoPutRequest()
	request := operations.PutSourceKlaviyoRequest{
		SourceID:                sourceID,
		SourceKlaviyoPutRequest: sourceKlaviyoPutRequest,
	}
	res, err := r.client.Sources.PutSourceKlaviyo(ctx, request)
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
	if fmt.Sprintf("%v", res.StatusCode)[0] != '2' {
		resp.Diagnostics.AddError(fmt.Sprintf("unexpected response from API. Got an unexpected response code %v", res.StatusCode), debugResponse(res.RawResponse))
		return
	}
	refreshPlan(ctx, plan, &data, resp.Diagnostics)
	var sourceId1 string
	sourceId1 = data.SourceID.ValueString()

	request1 := operations.GetSourceKlaviyoRequest{
		SourceID: sourceId1,
	}
	res1, err := r.client.Sources.GetSourceKlaviyo(ctx, request1)
	if err != nil {
		resp.Diagnostics.AddError("failure to invoke API", err.Error())
		if res1 != nil && res1.RawResponse != nil {
			resp.Diagnostics.AddError("unexpected http request/response", debugResponse(res1.RawResponse))
		}
		return
	}
	if res1 == nil {
		resp.Diagnostics.AddError("unexpected response from API", fmt.Sprintf("%v", res1))
		return
	}
	if res1.StatusCode != 200 {
		resp.Diagnostics.AddError(fmt.Sprintf("unexpected response from API. Got an unexpected response code %v", res1.StatusCode), debugResponse(res1.RawResponse))
		return
	}
	if !(res1.SourceResponse != nil) {
		resp.Diagnostics.AddError("unexpected response from API. Got an unexpected response body", debugResponse(res1.RawResponse))
		return
	}
	data.RefreshFromSharedSourceResponse(res1.SourceResponse)
	refreshPlan(ctx, plan, &data, resp.Diagnostics)

	// Save updated data into Terraform state
	resp.Diagnostics.Append(resp.State.Set(ctx, &data)...)
}

func (r *SourceKlaviyoResource) Delete(ctx context.Context, req resource.DeleteRequest, resp *resource.DeleteResponse) {
	var data *SourceKlaviyoResourceModel
	var item types.Object

	resp.Diagnostics.Append(req.State.Get(ctx, &item)...)
	if resp.Diagnostics.HasError() {
		return
	}

	resp.Diagnostics.Append(item.As(ctx, &data, basetypes.ObjectAsOptions{
		UnhandledNullAsEmpty:    true,
		UnhandledUnknownAsEmpty: true,
	})...)

	if resp.Diagnostics.HasError() {
		return
	}

	var sourceID string
	sourceID = data.SourceID.ValueString()

	request := operations.DeleteSourceKlaviyoRequest{
		SourceID: sourceID,
	}
	res, err := r.client.Sources.DeleteSourceKlaviyo(ctx, request)
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
	if fmt.Sprintf("%v", res.StatusCode)[0] != '2' {
		resp.Diagnostics.AddError(fmt.Sprintf("unexpected response from API. Got an unexpected response code %v", res.StatusCode), debugResponse(res.RawResponse))
		return
	}

}

func (r *SourceKlaviyoResource) ImportState(ctx context.Context, req resource.ImportStateRequest, resp *resource.ImportStateResponse) {
	resp.Diagnostics.Append(resp.State.SetAttribute(ctx, path.Root("source_id"), req.ID)...)
}
