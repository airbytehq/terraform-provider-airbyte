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
	"github.com/hashicorp/terraform-plugin-framework-validators/stringvalidator"
	"github.com/hashicorp/terraform-plugin-framework/path"
	"github.com/hashicorp/terraform-plugin-framework/resource"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema/planmodifier"
	"github.com/hashicorp/terraform-plugin-framework/resource/schema/stringplanmodifier"
	"github.com/hashicorp/terraform-plugin-framework/schema/validator"
	"github.com/hashicorp/terraform-plugin-framework/types"
	"github.com/hashicorp/terraform-plugin-framework/types/basetypes"
	"regexp"
)

// Ensure provider defined types fully satisfy framework interfaces.
var _ resource.Resource = &SourceGnewsResource{}
var _ resource.ResourceWithImportState = &SourceGnewsResource{}

func NewSourceGnewsResource() resource.Resource {
	return &SourceGnewsResource{}
}

// SourceGnewsResource defines the resource implementation.
type SourceGnewsResource struct {
	client *sdk.SDK
}

// SourceGnewsResourceModel describes the resource data model.
type SourceGnewsResourceModel struct {
	Configuration      tfTypes.SourceGnews                 `tfsdk:"configuration"`
	CreatedAt          types.Int64                         `tfsdk:"created_at"`
	DefinitionID       types.String                        `tfsdk:"definition_id"`
	Name               types.String                        `tfsdk:"name"`
	ResourceAllocation *tfTypes.ScopedResourceRequirements `tfsdk:"resource_allocation"`
	SecretID           types.String                        `tfsdk:"secret_id"`
	SourceID           types.String                        `tfsdk:"source_id"`
	SourceType         types.String                        `tfsdk:"source_type"`
	WorkspaceID        types.String                        `tfsdk:"workspace_id"`
}

func (r *SourceGnewsResource) Metadata(ctx context.Context, req resource.MetadataRequest, resp *resource.MetadataResponse) {
	resp.TypeName = req.ProviderTypeName + "_source_gnews"
}

func (r *SourceGnewsResource) Schema(ctx context.Context, req resource.SchemaRequest, resp *resource.SchemaResponse) {
	resp.Schema = schema.Schema{
		MarkdownDescription: "SourceGnews Resource",
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
						Description: `API Key`,
					},
					"country": schema.StringAttribute{
						Optional:    true,
						Description: `This parameter allows you to specify the country where the news articles returned by the API were published, the contents of the articles are not necessarily related to the specified country. You have to set as value the 2 letters code of the country you want to filter. must be one of ["au", "br", "ca", "cn", "eg", "fr", "de", "gr", "hk", "in", "ie", "il", "it", "jp", "nl", "no", "pk", "pe", "ph", "pt", "ro", "ru", "sg", "es", "se", "ch", "tw", "ua", "gb", "us"]`,
						Validators: []validator.String{
							stringvalidator.OneOf(
								"au",
								"br",
								"ca",
								"cn",
								"eg",
								"fr",
								"de",
								"gr",
								"hk",
								"in",
								"ie",
								"il",
								"it",
								"jp",
								"nl",
								"no",
								"pk",
								"pe",
								"ph",
								"pt",
								"ro",
								"ru",
								"sg",
								"es",
								"se",
								"ch",
								"tw",
								"ua",
								"gb",
								"us",
							),
						},
					},
					"end_date": schema.StringAttribute{
						Optional:    true,
						Description: `This parameter allows you to filter the articles that have a publication date smaller than or equal to the  specified value. The date must respect the following format: YYYY-MM-DD hh:mm:ss (in UTC)`,
						Validators: []validator.String{
							stringvalidator.RegexMatches(regexp.MustCompile(`^[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2}$`), "must match pattern "+regexp.MustCompile(`^[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2}$`).String()),
						},
					},
					"in": schema.ListAttribute{
						Optional:    true,
						ElementType: types.StringType,
						Description: `This parameter allows you to choose in which attributes the keywords are searched. The attributes that can be set are title, description and content. It is possible to combine several attributes.`,
					},
					"language": schema.StringAttribute{
						Optional:    true,
						Description: `must be one of ["ar", "zh", "nl", "en", "fr", "de", "el", "he", "hi", "it", "ja", "ml", "mr", "no", "pt", "ro", "ru", "es", "sv", "ta", "te", "uk"]`,
						Validators: []validator.String{
							stringvalidator.OneOf(
								"ar",
								"zh",
								"nl",
								"en",
								"fr",
								"de",
								"el",
								"he",
								"hi",
								"it",
								"ja",
								"ml",
								"mr",
								"no",
								"pt",
								"ro",
								"ru",
								"es",
								"sv",
								"ta",
								"te",
								"uk",
							),
						},
					},
					"nullable": schema.ListAttribute{
						Optional:    true,
						ElementType: types.StringType,
						Description: `This parameter allows you to specify the attributes that you allow to return null values. The attributes that  can be set are title, description and content. It is possible to combine several attributes`,
					},
					"query": schema.StringAttribute{
						Required: true,
						MarkdownDescription: `This parameter allows you to specify your search keywords to find the news articles you are looking for. The keywords will be used to return the most relevant articles. It is possible to use logical operators  with keywords. - Phrase Search Operator: This operator allows you to make an exact search. Keywords surrounded by ` + "\n" +
							`  quotation marks are used to search for articles with the exact same keyword` + "\n" +
							`sequence. ` + "\n" +
							`  For example the query: "Apple iPhone" will return articles matching at` + "\n" +
							`least once this sequence of keywords. - Logical AND Operator: This operator allows you to make sure that several keywords are all used in the article` + "\n" +
							`  search. By default the space character acts as an AND operator, it is` + "\n" +
							`possible to replace the space character ` + "\n" +
							`  by AND to obtain the same result. For example the query: Apple Microsoft` + "\n" +
							`is equivalent to Apple AND Microsoft - Logical OR Operator: This operator allows you to retrieve articles matching the keyword a or the keyword b.` + "\n" +
							`  It is important to note that this operator has a higher precedence than` + "\n" +
							`the AND operator. For example the ` + "\n" +
							`  query: Apple OR Microsoft will return all articles matching the keyword` + "\n" +
							`Apple as well as all articles matching ` + "\n" +
							`  the keyword Microsoft` + "\n" +
							`- Logical NOT Operator: This operator allows you to remove from the results the articles corresponding to the` + "\n" +
							`  specified keywords. To use it, you need to add NOT in front of each word` + "\n" +
							`or phrase surrounded by quotes.` + "\n" +
							`  For example the query: Apple NOT iPhone will return all articles matching` + "\n" +
							`the keyword Apple but not the keyword` + "\n" +
							`  iPhone`,
					},
					"sortby": schema.StringAttribute{
						Optional: true,
						MarkdownDescription: `This parameter allows you to choose with which type of sorting the articles should be returned. Two values  are possible:` + "\n" +
							`  - publishedAt = sort by publication date, the articles with the most recent` + "\n" +
							`publication date are returned first` + "\n" +
							`  - relevance = sort by best match to keywords, the articles with the best` + "\n" +
							`match are returned first` + "\n" +
							`must be one of ["publishedAt", "relevance"]`,
						Validators: []validator.String{
							stringvalidator.OneOf(
								"publishedAt",
								"relevance",
							),
						},
					},
					"start_date": schema.StringAttribute{
						Optional:    true,
						Description: `This parameter allows you to filter the articles that have a publication date greater than or equal to the  specified value. The date must respect the following format: YYYY-MM-DD hh:mm:ss (in UTC)`,
						Validators: []validator.String{
							stringvalidator.RegexMatches(regexp.MustCompile(`^[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2}$`), "must match pattern "+regexp.MustCompile(`^[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2}$`).String()),
						},
					},
					"top_headlines_query": schema.StringAttribute{
						Optional: true,
						MarkdownDescription: `This parameter allows you to specify your search keywords to find the news articles you are looking for. The keywords will be used to return the most relevant articles. It is possible to use logical operators  with keywords. - Phrase Search Operator: This operator allows you to make an exact search. Keywords surrounded by ` + "\n" +
							`  quotation marks are used to search for articles with the exact same keyword` + "\n" +
							`sequence. ` + "\n" +
							`  For example the query: "Apple iPhone" will return articles matching at` + "\n" +
							`least once this sequence of keywords. - Logical AND Operator: This operator allows you to make sure that several keywords are all used in the article` + "\n" +
							`  search. By default the space character acts as an AND operator, it is` + "\n" +
							`possible to replace the space character ` + "\n" +
							`  by AND to obtain the same result. For example the query: Apple Microsoft` + "\n" +
							`is equivalent to Apple AND Microsoft - Logical OR Operator: This operator allows you to retrieve articles matching the keyword a or the keyword b.` + "\n" +
							`  It is important to note that this operator has a higher precedence than` + "\n" +
							`the AND operator. For example the ` + "\n" +
							`  query: Apple OR Microsoft will return all articles matching the keyword` + "\n" +
							`Apple as well as all articles matching ` + "\n" +
							`  the keyword Microsoft` + "\n" +
							`- Logical NOT Operator: This operator allows you to remove from the results the articles corresponding to the` + "\n" +
							`  specified keywords. To use it, you need to add NOT in front of each word` + "\n" +
							`or phrase surrounded by quotes.` + "\n" +
							`  For example the query: Apple NOT iPhone will return all articles matching` + "\n" +
							`the keyword Apple but not the keyword` + "\n" +
							`  iPhone`,
					},
					"top_headlines_topic": schema.StringAttribute{
						Optional:    true,
						Description: `This parameter allows you to change the category for the request. must be one of ["breaking-news", "world", "nation", "business", "technology", "entertainment", "sports", "science", "health"]`,
						Validators: []validator.String{
							stringvalidator.OneOf(
								"breaking-news",
								"world",
								"nation",
								"business",
								"technology",
								"entertainment",
								"sports",
								"science",
								"health",
							),
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

func (r *SourceGnewsResource) Configure(ctx context.Context, req resource.ConfigureRequest, resp *resource.ConfigureResponse) {
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

func (r *SourceGnewsResource) Create(ctx context.Context, req resource.CreateRequest, resp *resource.CreateResponse) {
	var data *SourceGnewsResourceModel
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

	request := data.ToSharedSourceGnewsCreateRequest()
	res, err := r.client.Sources.CreateSourceGnews(ctx, request)
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

	request1 := operations.GetSourceGnewsRequest{
		SourceID: sourceID,
	}
	res1, err := r.client.Sources.GetSourceGnews(ctx, request1)
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

func (r *SourceGnewsResource) Read(ctx context.Context, req resource.ReadRequest, resp *resource.ReadResponse) {
	var data *SourceGnewsResourceModel
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

	request := operations.GetSourceGnewsRequest{
		SourceID: sourceID,
	}
	res, err := r.client.Sources.GetSourceGnews(ctx, request)
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

func (r *SourceGnewsResource) Update(ctx context.Context, req resource.UpdateRequest, resp *resource.UpdateResponse) {
	var data *SourceGnewsResourceModel
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

	sourceGnewsPutRequest := data.ToSharedSourceGnewsPutRequest()
	request := operations.PutSourceGnewsRequest{
		SourceID:              sourceID,
		SourceGnewsPutRequest: sourceGnewsPutRequest,
	}
	res, err := r.client.Sources.PutSourceGnews(ctx, request)
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

	request1 := operations.GetSourceGnewsRequest{
		SourceID: sourceId1,
	}
	res1, err := r.client.Sources.GetSourceGnews(ctx, request1)
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

func (r *SourceGnewsResource) Delete(ctx context.Context, req resource.DeleteRequest, resp *resource.DeleteResponse) {
	var data *SourceGnewsResourceModel
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

	request := operations.DeleteSourceGnewsRequest{
		SourceID: sourceID,
	}
	res, err := r.client.Sources.DeleteSourceGnews(ctx, request)
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

func (r *SourceGnewsResource) ImportState(ctx context.Context, req resource.ImportStateRequest, resp *resource.ImportStateResponse) {
	resp.Diagnostics.Append(resp.State.SetAttribute(ctx, path.Root("source_id"), req.ID)...)
}
