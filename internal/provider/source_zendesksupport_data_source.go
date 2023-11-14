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
var _ datasource.DataSource = &SourceZendeskSupportDataSource{}
var _ datasource.DataSourceWithConfigure = &SourceZendeskSupportDataSource{}

func NewSourceZendeskSupportDataSource() datasource.DataSource {
	return &SourceZendeskSupportDataSource{}
}

// SourceZendeskSupportDataSource is the data source implementation.
type SourceZendeskSupportDataSource struct {
	client *sdk.SDK
}

// SourceZendeskSupportDataSourceModel describes the data model.
type SourceZendeskSupportDataSourceModel struct {
	Configuration SourceZendeskSupport1 `tfsdk:"configuration"`
	Name          types.String          `tfsdk:"name"`
	SecretID      types.String          `tfsdk:"secret_id"`
	SourceID      types.String          `tfsdk:"source_id"`
	WorkspaceID   types.String          `tfsdk:"workspace_id"`
}

// Metadata returns the data source type name.
func (r *SourceZendeskSupportDataSource) Metadata(ctx context.Context, req datasource.MetadataRequest, resp *datasource.MetadataResponse) {
	resp.TypeName = req.ProviderTypeName + "_source_zendesk_support"
}

// Schema defines the schema for the data source.
func (r *SourceZendeskSupportDataSource) Schema(ctx context.Context, req datasource.SchemaRequest, resp *datasource.SchemaResponse) {
	resp.Schema = schema.Schema{
		MarkdownDescription: "SourceZendeskSupport DataSource",

		Attributes: map[string]schema.Attribute{
			"configuration": schema.SingleNestedAttribute{
				Computed: true,
				Attributes: map[string]schema.Attribute{
					"credentials": schema.SingleNestedAttribute{
						Computed: true,
						Attributes: map[string]schema.Attribute{
							"source_zendesk_support_authentication_api_token": schema.SingleNestedAttribute{
								Computed: true,
								Attributes: map[string]schema.Attribute{
									"api_token": schema.StringAttribute{
										Computed:    true,
										Description: `The value of the API token generated. See our <a href="https://docs.airbyte.com/integrations/sources/zendesk-support#setup-guide">full documentation</a> for more information on generating this token.`,
									},
									"credentials": schema.StringAttribute{
										Computed: true,
										Validators: []validator.String{
											stringvalidator.OneOf(
												"api_token",
											),
										},
										Description: `must be one of ["api_token"]`,
									},
									"email": schema.StringAttribute{
										Computed:    true,
										Description: `The user email for your Zendesk account.`,
									},
									"additional_properties": schema.StringAttribute{
										Optional: true,
										Validators: []validator.String{
											validators.IsValidJSON(),
										},
										Description: `Parsed as JSON.`,
									},
								},
								Description: `Zendesk allows two authentication methods. We recommend using ` + "`" + `OAuth2.0` + "`" + ` for Airbyte Cloud users and ` + "`" + `API token` + "`" + ` for Airbyte Open Source users.`,
							},
							"source_zendesk_support_authentication_o_auth2_0": schema.SingleNestedAttribute{
								Computed: true,
								Attributes: map[string]schema.Attribute{
									"access_token": schema.StringAttribute{
										Computed:    true,
										Description: `The OAuth access token. See the <a href="https://developer.zendesk.com/documentation/ticketing/working-with-oauth/creating-and-using-oauth-tokens-with-the-api/">Zendesk docs</a> for more information on generating this token.`,
									},
									"client_id": schema.StringAttribute{
										Computed:    true,
										Description: `The OAuth client's ID. See <a href="https://docs.searchunify.com/Content/Content-Sources/Zendesk-Authentication-OAuth-Client-ID-Secret.htm#:~:text=Get%20Client%20ID%20and%20Client%20Secret&text=Go%20to%20OAuth%20Clients%20and,will%20be%20displayed%20only%20once.">this guide</a> for more information.`,
									},
									"client_secret": schema.StringAttribute{
										Computed:    true,
										Description: `The OAuth client secret. See <a href="https://docs.searchunify.com/Content/Content-Sources/Zendesk-Authentication-OAuth-Client-ID-Secret.htm#:~:text=Get%20Client%20ID%20and%20Client%20Secret&text=Go%20to%20OAuth%20Clients%20and,will%20be%20displayed%20only%20once.">this guide</a> for more information.`,
									},
									"credentials": schema.StringAttribute{
										Computed: true,
										Validators: []validator.String{
											stringvalidator.OneOf(
												"oauth2.0",
											),
										},
										Description: `must be one of ["oauth2.0"]`,
									},
									"additional_properties": schema.StringAttribute{
										Optional: true,
										Validators: []validator.String{
											validators.IsValidJSON(),
										},
										Description: `Parsed as JSON.`,
									},
								},
								Description: `Zendesk allows two authentication methods. We recommend using ` + "`" + `OAuth2.0` + "`" + ` for Airbyte Cloud users and ` + "`" + `API token` + "`" + ` for Airbyte Open Source users.`,
							},
							"source_zendesk_support_update_authentication_api_token": schema.SingleNestedAttribute{
								Computed: true,
								Attributes: map[string]schema.Attribute{
									"api_token": schema.StringAttribute{
										Computed:    true,
										Description: `The value of the API token generated. See our <a href="https://docs.airbyte.com/integrations/sources/zendesk-support#setup-guide">full documentation</a> for more information on generating this token.`,
									},
									"credentials": schema.StringAttribute{
										Computed: true,
										Validators: []validator.String{
											stringvalidator.OneOf(
												"api_token",
											),
										},
										Description: `must be one of ["api_token"]`,
									},
									"email": schema.StringAttribute{
										Computed:    true,
										Description: `The user email for your Zendesk account.`,
									},
									"additional_properties": schema.StringAttribute{
										Optional: true,
										Validators: []validator.String{
											validators.IsValidJSON(),
										},
										Description: `Parsed as JSON.`,
									},
								},
								Description: `Zendesk allows two authentication methods. We recommend using ` + "`" + `OAuth2.0` + "`" + ` for Airbyte Cloud users and ` + "`" + `API token` + "`" + ` for Airbyte Open Source users.`,
							},
							"source_zendesk_support_update_authentication_o_auth2_0": schema.SingleNestedAttribute{
								Computed: true,
								Attributes: map[string]schema.Attribute{
									"access_token": schema.StringAttribute{
										Computed:    true,
										Description: `The OAuth access token. See the <a href="https://developer.zendesk.com/documentation/ticketing/working-with-oauth/creating-and-using-oauth-tokens-with-the-api/">Zendesk docs</a> for more information on generating this token.`,
									},
									"client_id": schema.StringAttribute{
										Computed:    true,
										Description: `The OAuth client's ID. See <a href="https://docs.searchunify.com/Content/Content-Sources/Zendesk-Authentication-OAuth-Client-ID-Secret.htm#:~:text=Get%20Client%20ID%20and%20Client%20Secret&text=Go%20to%20OAuth%20Clients%20and,will%20be%20displayed%20only%20once.">this guide</a> for more information.`,
									},
									"client_secret": schema.StringAttribute{
										Computed:    true,
										Description: `The OAuth client secret. See <a href="https://docs.searchunify.com/Content/Content-Sources/Zendesk-Authentication-OAuth-Client-ID-Secret.htm#:~:text=Get%20Client%20ID%20and%20Client%20Secret&text=Go%20to%20OAuth%20Clients%20and,will%20be%20displayed%20only%20once.">this guide</a> for more information.`,
									},
									"credentials": schema.StringAttribute{
										Computed: true,
										Validators: []validator.String{
											stringvalidator.OneOf(
												"oauth2.0",
											),
										},
										Description: `must be one of ["oauth2.0"]`,
									},
									"additional_properties": schema.StringAttribute{
										Optional: true,
										Validators: []validator.String{
											validators.IsValidJSON(),
										},
										Description: `Parsed as JSON.`,
									},
								},
								Description: `Zendesk allows two authentication methods. We recommend using ` + "`" + `OAuth2.0` + "`" + ` for Airbyte Cloud users and ` + "`" + `API token` + "`" + ` for Airbyte Open Source users.`,
							},
						},
						Validators: []validator.Object{
							validators.ExactlyOneChild(),
						},
						Description: `Zendesk allows two authentication methods. We recommend using ` + "`" + `OAuth2.0` + "`" + ` for Airbyte Cloud users and ` + "`" + `API token` + "`" + ` for Airbyte Open Source users.`,
					},
					"ignore_pagination": schema.BoolAttribute{
						Computed:    true,
						Description: `Makes each stream read a single page of data.`,
					},
					"source_type": schema.StringAttribute{
						Computed: true,
						Validators: []validator.String{
							stringvalidator.OneOf(
								"zendesk-support",
							),
						},
						Description: `must be one of ["zendesk-support"]`,
					},
					"start_date": schema.StringAttribute{
						Computed: true,
						Validators: []validator.String{
							validators.IsRFC3339(),
						},
						Description: `The UTC date and time from which you'd like to replicate data, in the format YYYY-MM-DDT00:00:00Z. All data generated after this date will be replicated.`,
					},
					"subdomain": schema.StringAttribute{
						Computed:    true,
						Description: `This is your unique Zendesk subdomain that can be found in your account URL. For example, in https://MY_SUBDOMAIN.zendesk.com/, MY_SUBDOMAIN is the value of your subdomain.`,
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

func (r *SourceZendeskSupportDataSource) Configure(ctx context.Context, req datasource.ConfigureRequest, resp *datasource.ConfigureResponse) {
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

func (r *SourceZendeskSupportDataSource) Read(ctx context.Context, req datasource.ReadRequest, resp *datasource.ReadResponse) {
	var data *SourceZendeskSupportDataSourceModel
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
	request := operations.GetSourceZendeskSupportRequest{
		SourceID: sourceID,
	}
	res, err := r.client.Sources.GetSourceZendeskSupport(ctx, request)
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