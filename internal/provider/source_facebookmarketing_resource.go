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
	"github.com/hashicorp/terraform-plugin-framework-validators/listvalidator"
	"github.com/hashicorp/terraform-plugin-framework-validators/objectvalidator"
	"github.com/hashicorp/terraform-plugin-framework-validators/stringvalidator"
	"github.com/hashicorp/terraform-plugin-framework/attr"
	"github.com/hashicorp/terraform-plugin-framework/path"
	"github.com/hashicorp/terraform-plugin-framework/resource"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema/booldefault"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema/int64default"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema/listdefault"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema/planmodifier"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema/stringdefault"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema/stringplanmodifier"
	"github.com/hashicorp/terraform-plugin-framework/schema/validator"
	"github.com/hashicorp/terraform-plugin-framework/types"
	"github.com/hashicorp/terraform-plugin-framework/types/basetypes"
)

// Ensure provider defined types fully satisfy framework interfaces.
var _ resource.Resource = &SourceFacebookMarketingResource{}
var _ resource.ResourceWithImportState = &SourceFacebookMarketingResource{}

func NewSourceFacebookMarketingResource() resource.Resource {
	return &SourceFacebookMarketingResource{}
}

// SourceFacebookMarketingResource defines the resource implementation.
type SourceFacebookMarketingResource struct {
	client *sdk.SDK
}

// SourceFacebookMarketingResourceModel describes the resource data model.
type SourceFacebookMarketingResourceModel struct {
	Configuration      tfTypes.SourceFacebookMarketing     `tfsdk:"configuration"`
	CreatedAt          types.Int64                         `tfsdk:"created_at"`
	DefinitionID       types.String                        `tfsdk:"definition_id"`
	Name               types.String                        `tfsdk:"name"`
	ResourceAllocation *tfTypes.ScopedResourceRequirements `tfsdk:"resource_allocation"`
	SecretID           types.String                        `tfsdk:"secret_id"`
	SourceID           types.String                        `tfsdk:"source_id"`
	SourceType         types.String                        `tfsdk:"source_type"`
	WorkspaceID        types.String                        `tfsdk:"workspace_id"`
}

func (r *SourceFacebookMarketingResource) Metadata(ctx context.Context, req resource.MetadataRequest, resp *resource.MetadataResponse) {
	resp.TypeName = req.ProviderTypeName + "_source_facebook_marketing"
}

func (r *SourceFacebookMarketingResource) Schema(ctx context.Context, req resource.SchemaRequest, resp *resource.SchemaResponse) {
	resp.Schema = schema.Schema{
		MarkdownDescription: "SourceFacebookMarketing Resource",
		Attributes: map[string]schema.Attribute{
			"configuration": schema.SingleNestedAttribute{
				Required: true,
				PlanModifiers: []planmodifier.Object{
					speakeasy_objectplanmodifier.SuppressDiff(speakeasy_objectplanmodifier.ExplicitSuppress),
				},
				Attributes: map[string]schema.Attribute{
					"access_token": schema.StringAttribute{
						Optional:    true,
						Sensitive:   true,
						Description: `The value of the generated access token. From your App’s Dashboard, click on "Marketing API" then "Tools". Select permissions <b>ads_management, ads_read, read_insights, business_management</b>. Then click on "Get token". See the <a href="https://docs.airbyte.com/integrations/sources/facebook-marketing">docs</a> for more information.`,
					},
					"account_ids": schema.ListAttribute{
						Required:    true,
						ElementType: types.StringType,
						Description: `The Facebook Ad account ID(s) to pull data from. The Ad account ID number is in the account dropdown menu or in your browser's address bar of your <a href="https://adsmanager.facebook.com/adsmanager/">Meta Ads Manager</a>. See the <a href="https://www.facebook.com/business/help/1492627900875762">docs</a> for more information.`,
						Validators: []validator.List{
							listvalidator.SizeAtLeast(1),
							listvalidator.UniqueValues(),
						},
					},
					"ad_statuses": schema.ListAttribute{
						Computed:    true,
						Optional:    true,
						Default:     listdefault.StaticValue(types.ListValueMust(types.StringType, []attr.Value{})),
						ElementType: types.StringType,
						Description: `Select the statuses you want to be loaded in the stream. If no specific statuses are selected, the API's default behavior applies, and some statuses may be filtered out.`,
					},
					"adset_statuses": schema.ListAttribute{
						Computed:    true,
						Optional:    true,
						Default:     listdefault.StaticValue(types.ListValueMust(types.StringType, []attr.Value{})),
						ElementType: types.StringType,
						Description: `Select the statuses you want to be loaded in the stream. If no specific statuses are selected, the API's default behavior applies, and some statuses may be filtered out.`,
					},
					"campaign_statuses": schema.ListAttribute{
						Computed:    true,
						Optional:    true,
						Default:     listdefault.StaticValue(types.ListValueMust(types.StringType, []attr.Value{})),
						ElementType: types.StringType,
						Description: `Select the statuses you want to be loaded in the stream. If no specific statuses are selected, the API's default behavior applies, and some statuses may be filtered out.`,
					},
					"credentials": schema.SingleNestedAttribute{
						Required: true,
						Attributes: map[string]schema.Attribute{
							"authenticate_via_facebook_marketing_oauth": schema.SingleNestedAttribute{
								Optional: true,
								Attributes: map[string]schema.Attribute{
									"access_token": schema.StringAttribute{
										Optional:    true,
										Sensitive:   true,
										Description: `The value of the generated access token. From your App’s Dashboard, click on "Marketing API" then "Tools". Select permissions <b>ads_management, ads_read, read_insights, business_management</b>. Then click on "Get token". See the <a href="https://docs.airbyte.com/integrations/sources/facebook-marketing">docs</a> for more information.`,
									},
									"client_id": schema.StringAttribute{
										Required:    true,
										Sensitive:   true,
										Description: `Client ID for the Facebook Marketing API`,
									},
									"client_secret": schema.StringAttribute{
										Required:    true,
										Sensitive:   true,
										Description: `Client Secret for the Facebook Marketing API`,
									},
								},
								Validators: []validator.Object{
									objectvalidator.ConflictsWith(path.Expressions{
										path.MatchRelative().AtParent().AtName("service_account_key_authentication"),
									}...),
								},
							},
							"service_account_key_authentication": schema.SingleNestedAttribute{
								Optional: true,
								Attributes: map[string]schema.Attribute{
									"access_token": schema.StringAttribute{
										Required:    true,
										Sensitive:   true,
										Description: `The value of the generated access token. From your App’s Dashboard, click on "Marketing API" then "Tools". Select permissions <b>ads_management, ads_read, read_insights, business_management</b>. Then click on "Get token". See the <a href="https://docs.airbyte.com/integrations/sources/facebook-marketing">docs</a> for more information.`,
									},
								},
								Validators: []validator.Object{
									objectvalidator.ConflictsWith(path.Expressions{
										path.MatchRelative().AtParent().AtName("authenticate_via_facebook_marketing_oauth"),
									}...),
								},
							},
						},
						Description: `Credentials for connecting to the Facebook Marketing API`,
					},
					"custom_insights": schema.ListNestedAttribute{
						Optional: true,
						NestedObject: schema.NestedAttributeObject{
							Attributes: map[string]schema.Attribute{
								"action_breakdowns": schema.ListAttribute{
									Computed:    true,
									Optional:    true,
									Default:     listdefault.StaticValue(types.ListValueMust(types.StringType, []attr.Value{})),
									ElementType: types.StringType,
									Description: `A list of chosen action_breakdowns for action_breakdowns`,
								},
								"breakdowns": schema.ListAttribute{
									Computed:    true,
									Optional:    true,
									Default:     listdefault.StaticValue(types.ListValueMust(types.StringType, []attr.Value{})),
									ElementType: types.StringType,
									Description: `A list of chosen breakdowns for breakdowns`,
								},
								"end_date": schema.StringAttribute{
									Optional:    true,
									Description: `The date until which you'd like to replicate data for this stream, in the format YYYY-MM-DDT00:00:00Z. All data generated between the start date and this end date will be replicated. Not setting this option will result in always syncing the latest data.`,
									Validators: []validator.String{
										validators.IsRFC3339(),
									},
								},
								"fields": schema.ListAttribute{
									Computed:    true,
									Optional:    true,
									Default:     listdefault.StaticValue(types.ListValueMust(types.StringType, []attr.Value{})),
									ElementType: types.StringType,
									Description: `A list of chosen fields for fields parameter`,
								},
								"insights_job_timeout": schema.Int64Attribute{
									Computed:    true,
									Optional:    true,
									Default:     int64default.StaticInt64(60),
									Description: `The insights job timeout. Default: 60`,
									Validators: []validator.Int64{
										int64validator.AtMost(60),
									},
								},
								"insights_lookback_window": schema.Int64Attribute{
									Computed:    true,
									Optional:    true,
									Default:     int64default.StaticInt64(28),
									Description: `The attribution window. Default: 28`,
									Validators: []validator.Int64{
										int64validator.AtMost(28),
									},
								},
								"level": schema.StringAttribute{
									Computed:    true,
									Optional:    true,
									Default:     stringdefault.StaticString(`ad`),
									Description: `Chosen level for API. Default: "ad"; must be one of ["ad", "adset", "campaign", "account"]`,
									Validators: []validator.String{
										stringvalidator.OneOf(
											"ad",
											"adset",
											"campaign",
											"account",
										),
									},
								},
								"name": schema.StringAttribute{
									Required:    true,
									Description: `The name value of insight`,
								},
								"start_date": schema.StringAttribute{
									Optional:    true,
									Description: `The date from which you'd like to replicate data for this stream, in the format YYYY-MM-DDT00:00:00Z.`,
									Validators: []validator.String{
										validators.IsRFC3339(),
									},
								},
								"time_increment": schema.Int64Attribute{
									Computed:    true,
									Optional:    true,
									Default:     int64default.StaticInt64(1),
									Description: `Time window in days by which to aggregate statistics. The sync will be chunked into N day intervals, where N is the number of days you specified. For example, if you set this value to 7, then all statistics will be reported as 7-day aggregates by starting from the start_date. If the start and end dates are October 1st and October 30th, then the connector will output 5 records: 01 - 06, 07 - 13, 14 - 20, 21 - 27, and 28 - 30 (3 days only). The minimum allowed value for this field is 1, and the maximum is 89. Default: 1`,
									Validators: []validator.Int64{
										int64validator.Between(1, 89),
									},
								},
							},
						},
						Description: `A list which contains ad statistics entries, each entry must have a name and can contains fields, breakdowns or action_breakdowns. Click on "add" to fill this field.`,
					},
					"end_date": schema.StringAttribute{
						Optional:    true,
						Description: `The date until which you'd like to replicate data for all incremental streams, in the format YYYY-MM-DDT00:00:00Z. All data generated between the start date and this end date will be replicated. Not setting this option will result in always syncing the latest data.`,
						Validators: []validator.String{
							validators.IsRFC3339(),
						},
					},
					"fetch_thumbnail_images": schema.BoolAttribute{
						Computed:    true,
						Optional:    true,
						Default:     booldefault.StaticBool(false),
						Description: `Set to active if you want to fetch the thumbnail_url and store the result in thumbnail_data_url for each Ad Creative. Default: false`,
					},
					"insights_job_timeout": schema.Int64Attribute{
						Computed:    true,
						Optional:    true,
						Default:     int64default.StaticInt64(60),
						Description: `Insights Job Timeout establishes the maximum amount of time (in minutes) of waiting for the report job to complete. When timeout is reached the job is considered failed and we are trying to request smaller amount of data by breaking the job to few smaller ones. If you definitely know that 60 minutes is not enough for your report to be processed then you can decrease the timeout value, so we start breaking job to smaller parts faster. Default: 60`,
						Validators: []validator.Int64{
							int64validator.AtMost(60),
						},
					},
					"insights_lookback_window": schema.Int64Attribute{
						Computed:    true,
						Optional:    true,
						Default:     int64default.StaticInt64(28),
						Description: `The attribution window. Facebook freezes insight data 28 days after it was generated, which means that all data from the past 28 days may have changed since we last emitted it, so you can retrieve refreshed insights from the past by setting this parameter. If you set a custom lookback window value in Facebook account, please provide the same value here. Default: 28`,
						Validators: []validator.Int64{
							int64validator.AtMost(28),
						},
					},
					"page_size": schema.Int64Attribute{
						Computed:    true,
						Optional:    true,
						Default:     int64default.StaticInt64(100),
						Description: `Page size used when sending requests to Facebook API to specify number of records per page when response has pagination. Most users do not need to set this field unless they specifically need to tune the connector to address specific issues or use cases. Default: 100`,
					},
					"start_date": schema.StringAttribute{
						Optional:    true,
						Description: `The date from which you'd like to replicate data for all incremental streams, in the format YYYY-MM-DDT00:00:00Z. If not set then all data will be replicated for usual streams and only last 2 years for insight streams.`,
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

func (r *SourceFacebookMarketingResource) Configure(ctx context.Context, req resource.ConfigureRequest, resp *resource.ConfigureResponse) {
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

func (r *SourceFacebookMarketingResource) Create(ctx context.Context, req resource.CreateRequest, resp *resource.CreateResponse) {
	var data *SourceFacebookMarketingResourceModel
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

	request := data.ToSharedSourceFacebookMarketingCreateRequest()
	res, err := r.client.Sources.CreateSourceFacebookMarketing(ctx, request)
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

	request1 := operations.GetSourceFacebookMarketingRequest{
		SourceID: sourceID,
	}
	res1, err := r.client.Sources.GetSourceFacebookMarketing(ctx, request1)
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

func (r *SourceFacebookMarketingResource) Read(ctx context.Context, req resource.ReadRequest, resp *resource.ReadResponse) {
	var data *SourceFacebookMarketingResourceModel
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

	request := operations.GetSourceFacebookMarketingRequest{
		SourceID: sourceID,
	}
	res, err := r.client.Sources.GetSourceFacebookMarketing(ctx, request)
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

func (r *SourceFacebookMarketingResource) Update(ctx context.Context, req resource.UpdateRequest, resp *resource.UpdateResponse) {
	var data *SourceFacebookMarketingResourceModel
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

	sourceFacebookMarketingPutRequest := data.ToSharedSourceFacebookMarketingPutRequest()
	request := operations.PutSourceFacebookMarketingRequest{
		SourceID:                          sourceID,
		SourceFacebookMarketingPutRequest: sourceFacebookMarketingPutRequest,
	}
	res, err := r.client.Sources.PutSourceFacebookMarketing(ctx, request)
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

	request1 := operations.GetSourceFacebookMarketingRequest{
		SourceID: sourceId1,
	}
	res1, err := r.client.Sources.GetSourceFacebookMarketing(ctx, request1)
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

func (r *SourceFacebookMarketingResource) Delete(ctx context.Context, req resource.DeleteRequest, resp *resource.DeleteResponse) {
	var data *SourceFacebookMarketingResourceModel
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

	request := operations.DeleteSourceFacebookMarketingRequest{
		SourceID: sourceID,
	}
	res, err := r.client.Sources.DeleteSourceFacebookMarketing(ctx, request)
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

func (r *SourceFacebookMarketingResource) ImportState(ctx context.Context, req resource.ImportStateRequest, resp *resource.ImportStateResponse) {
	resp.Diagnostics.Append(resp.State.SetAttribute(ctx, path.Root("source_id"), req.ID)...)
}
