// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package provider

import (
	"airbyte/internal/sdk"
	"airbyte/internal/sdk/pkg/models/operations"
	"context"
	"fmt"

	"airbyte/internal/validators"
	"github.com/hashicorp/terraform-plugin-framework-validators/stringvalidator"
	"github.com/hashicorp/terraform-plugin-framework/datasource"
	"github.com/hashicorp/terraform-plugin-framework/datasource/schema"
	"github.com/hashicorp/terraform-plugin-framework/schema/validator"
	"github.com/hashicorp/terraform-plugin-framework/types"
	"github.com/hashicorp/terraform-plugin-framework/types/basetypes"
)

// Ensure provider defined types fully satisfy framework interfaces.
var _ datasource.DataSource = &SourceMixpanelDataSource{}
var _ datasource.DataSourceWithConfigure = &SourceMixpanelDataSource{}

func NewSourceMixpanelDataSource() datasource.DataSource {
	return &SourceMixpanelDataSource{}
}

// SourceMixpanelDataSource is the data source implementation.
type SourceMixpanelDataSource struct {
	client *sdk.SDK
}

// SourceMixpanelDataSourceModel describes the data model.
type SourceMixpanelDataSourceModel struct {
	Configuration SourceMixpanel `tfsdk:"configuration"`
	Name          types.String   `tfsdk:"name"`
	SecretID      types.String   `tfsdk:"secret_id"`
	SourceID      types.String   `tfsdk:"source_id"`
	WorkspaceID   types.String   `tfsdk:"workspace_id"`
}

// Metadata returns the data source type name.
func (r *SourceMixpanelDataSource) Metadata(ctx context.Context, req datasource.MetadataRequest, resp *datasource.MetadataResponse) {
	resp.TypeName = req.ProviderTypeName + "_source_mixpanel"
}

// Schema defines the schema for the data source.
func (r *SourceMixpanelDataSource) Schema(ctx context.Context, req datasource.SchemaRequest, resp *datasource.SchemaResponse) {
	resp.Schema = schema.Schema{
		MarkdownDescription: "SourceMixpanel DataSource",

		Attributes: map[string]schema.Attribute{
			"configuration": schema.SingleNestedAttribute{
				Computed: true,
				Attributes: map[string]schema.Attribute{
					"attribution_window": schema.Int64Attribute{
						Computed:    true,
						Description: ` A period of time for attributing results to ads and the lookback period after those actions occur during which ad results are counted. Default attribution window is 5 days.`,
					},
					"credentials": schema.SingleNestedAttribute{
						Computed: true,
						Attributes: map[string]schema.Attribute{
							"source_mixpanel_authentication_wildcard_project_secret": schema.SingleNestedAttribute{
								Computed: true,
								Attributes: map[string]schema.Attribute{
									"api_secret": schema.StringAttribute{
										Computed:    true,
										Description: `Mixpanel project secret. See the <a href="https://developer.mixpanel.com/reference/project-secret#managing-a-projects-secret">docs</a> for more information on how to obtain this.`,
									},
									"option_title": schema.StringAttribute{
										Computed: true,
										Validators: []validator.String{
											stringvalidator.OneOf(
												"Project Secret",
											),
										},
										Description: `must be one of ["Project Secret"]`,
									},
								},
								Description: `Choose how to authenticate to Mixpanel`,
							},
							"source_mixpanel_authentication_wildcard_service_account": schema.SingleNestedAttribute{
								Computed: true,
								Attributes: map[string]schema.Attribute{
									"option_title": schema.StringAttribute{
										Computed: true,
										Validators: []validator.String{
											stringvalidator.OneOf(
												"Service Account",
											),
										},
										Description: `must be one of ["Service Account"]`,
									},
									"secret": schema.StringAttribute{
										Computed:    true,
										Description: `Mixpanel Service Account Secret. See the <a href="https://developer.mixpanel.com/reference/service-accounts">docs</a> for more information on how to obtain this.`,
									},
									"username": schema.StringAttribute{
										Computed:    true,
										Description: `Mixpanel Service Account Username. See the <a href="https://developer.mixpanel.com/reference/service-accounts">docs</a> for more information on how to obtain this.`,
									},
								},
								Description: `Choose how to authenticate to Mixpanel`,
							},
							"source_mixpanel_update_authentication_wildcard_project_secret": schema.SingleNestedAttribute{
								Computed: true,
								Attributes: map[string]schema.Attribute{
									"api_secret": schema.StringAttribute{
										Computed:    true,
										Description: `Mixpanel project secret. See the <a href="https://developer.mixpanel.com/reference/project-secret#managing-a-projects-secret">docs</a> for more information on how to obtain this.`,
									},
									"option_title": schema.StringAttribute{
										Computed: true,
										Validators: []validator.String{
											stringvalidator.OneOf(
												"Project Secret",
											),
										},
										Description: `must be one of ["Project Secret"]`,
									},
								},
								Description: `Choose how to authenticate to Mixpanel`,
							},
							"source_mixpanel_update_authentication_wildcard_service_account": schema.SingleNestedAttribute{
								Computed: true,
								Attributes: map[string]schema.Attribute{
									"option_title": schema.StringAttribute{
										Computed: true,
										Validators: []validator.String{
											stringvalidator.OneOf(
												"Service Account",
											),
										},
										Description: `must be one of ["Service Account"]`,
									},
									"secret": schema.StringAttribute{
										Computed:    true,
										Description: `Mixpanel Service Account Secret. See the <a href="https://developer.mixpanel.com/reference/service-accounts">docs</a> for more information on how to obtain this.`,
									},
									"username": schema.StringAttribute{
										Computed:    true,
										Description: `Mixpanel Service Account Username. See the <a href="https://developer.mixpanel.com/reference/service-accounts">docs</a> for more information on how to obtain this.`,
									},
								},
								Description: `Choose how to authenticate to Mixpanel`,
							},
						},
						Validators: []validator.Object{
							validators.ExactlyOneChild(),
						},
						Description: `Choose how to authenticate to Mixpanel`,
					},
					"date_window_size": schema.Int64Attribute{
						Computed:    true,
						Description: `Defines window size in days, that used to slice through data. You can reduce it, if amount of data in each window is too big for your environment.`,
					},
					"end_date": schema.StringAttribute{
						Computed: true,
						Validators: []validator.String{
							validators.IsValidDate(),
						},
						Description: `The date in the format YYYY-MM-DD. Any data after this date will not be replicated. Left empty to always sync to most recent date`,
					},
					"project_id": schema.Int64Attribute{
						Computed:    true,
						Description: `Your project ID number. See the <a href="https://help.mixpanel.com/hc/en-us/articles/115004490503-Project-Settings#project-id">docs</a> for more information on how to obtain this.`,
					},
					"project_timezone": schema.StringAttribute{
						Computed:    true,
						Description: `Time zone in which integer date times are stored. The project timezone may be found in the project settings in the <a href="https://help.mixpanel.com/hc/en-us/articles/115004547203-Manage-Timezones-for-Projects-in-Mixpanel">Mixpanel console</a>.`,
					},
					"region": schema.StringAttribute{
						Computed: true,
						Validators: []validator.String{
							stringvalidator.OneOf(
								"US",
								"EU",
							),
						},
						MarkdownDescription: `must be one of ["US", "EU"]` + "\n" +
							`The region of mixpanel domain instance either US or EU.`,
					},
					"select_properties_by_default": schema.BoolAttribute{
						Computed:    true,
						Description: `Setting this config parameter to TRUE ensures that new properties on events and engage records are captured. Otherwise new properties will be ignored.`,
					},
					"source_type": schema.StringAttribute{
						Computed: true,
						Validators: []validator.String{
							stringvalidator.OneOf(
								"mixpanel",
							),
						},
						Description: `must be one of ["mixpanel"]`,
					},
					"start_date": schema.StringAttribute{
						Computed: true,
						Validators: []validator.String{
							validators.IsValidDate(),
						},
						Description: `The date in the format YYYY-MM-DD. Any data before this date will not be replicated. If this option is not set, the connector will replicate data from up to one year ago by default.`,
					},
				},
			},
			"name": schema.StringAttribute{
				Computed: true,
			},
			"secret_id": schema.StringAttribute{
				Optional:    true,
				Description: `Optional secretID obtained through the public API OAuth redirect flow.`,
			},
			"source_id": schema.StringAttribute{
				Required: true,
			},
			"workspace_id": schema.StringAttribute{
				Computed: true,
			},
		},
	}
}

func (r *SourceMixpanelDataSource) Configure(ctx context.Context, req datasource.ConfigureRequest, resp *datasource.ConfigureResponse) {
	// Prevent panic if the provider has not been configured.
	if req.ProviderData == nil {
		return
	}

	client, ok := req.ProviderData.(*sdk.SDK)

	if !ok {
		resp.Diagnostics.AddError(
			"Unexpected DataSource Configure Type",
			fmt.Sprintf("Expected *sdk.SDK, got: %T. Please report this issue to the provider developers.", req.ProviderData),
		)

		return
	}

	r.client = client
}

func (r *SourceMixpanelDataSource) Read(ctx context.Context, req datasource.ReadRequest, resp *datasource.ReadResponse) {
	var data *SourceMixpanelDataSourceModel
	var item types.Object

	resp.Diagnostics.Append(req.Config.Get(ctx, &item)...)
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

	sourceID := data.SourceID.ValueString()
	request := operations.GetSourceMixpanelRequest{
		SourceID: sourceID,
	}
	res, err := r.client.Sources.GetSourceMixpanel(ctx, request)
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
		resp.Diagnostics.AddError("unexpected response from API. No response body", debugResponse(res.RawResponse))
		return
	}
	data.RefreshFromGetResponse(res.SourceResponse)

	// Save updated data into Terraform state
	resp.Diagnostics.Append(resp.State.Set(ctx, &data)...)
}