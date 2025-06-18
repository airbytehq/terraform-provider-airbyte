// workspace_ids_data_source.go

package provider

import (
	"context"
	"fmt"
	"strconv"
	"time"

	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/operations"
	"github.com/hashicorp/terraform-plugin-framework/attr"
	"github.com/hashicorp/terraform-plugin-framework/datasource"
	"github.com/hashicorp/terraform-plugin-framework/datasource/schema"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

// Ensure provider defined types fully satisfy framework interfaces.
var _ datasource.DataSource = &WorkspaceIdsDataSource{}
var _ datasource.DataSourceWithConfigure = &WorkspaceIdsDataSource{}

func NewWorkspaceIdsDataSource() datasource.DataSource {
	return &WorkspaceIdsDataSource{}
}

// WorkspaceIdsDataSource defines the data source implementation.
type WorkspaceIdsDataSource struct {
	client *sdk.SDK
}

// WorkspaceIdsDataSourceModel describes the data model.
type WorkspaceIdsDataSourceModel struct {
	Id  types.String `tfsdk:"id"`
	Ids types.List   `tfsdk:"ids"`
}

// Metadata returns the data source type name.
func (d *WorkspaceIdsDataSource) Metadata(ctx context.Context, req datasource.MetadataRequest, resp *datasource.MetadataResponse) {
	resp.TypeName = req.ProviderTypeName + "_workspace_ids"
}

// Schema defines the schema for the data source.
func (d *WorkspaceIdsDataSource) Schema(ctx context.Context, req datasource.SchemaRequest, resp *datasource.SchemaResponse) {
	resp.Schema = schema.Schema{
		MarkdownDescription: "Get all Airbyte Workspace IDs (first will always be the default one created by Airbyte on launch)",

		Attributes: map[string]schema.Attribute{
			"id": schema.StringAttribute{
				Computed: true,
			},
			"ids": schema.ListAttribute{
				Description: "Workspace ID List",
				ElementType: types.StringType,
				Computed:    true,
			},
		},
	}
}

// Configure adds the provider configured client to the data source.
func (d *WorkspaceIdsDataSource) Configure(ctx context.Context, req datasource.ConfigureRequest, resp *datasource.ConfigureResponse) {
	// Prevent panic if the provider has not been configured.
	if req.ProviderData == nil {
		return
	}

	client, ok := req.ProviderData.(*sdk.SDK)

	if !ok {
		resp.Diagnostics.AddError(
			"Unexpected Data Source Configure Type",
			fmt.Sprintf("Expected *sdk.SDK, got: %T. Please report this issue to the provider developers.", req.ProviderData),
		)

		return
	}

	d.client = client
}

// Read refreshes the Terraform state with the latest data.
func (d *WorkspaceIdsDataSource) Read(ctx context.Context, req datasource.ReadRequest, resp *datasource.ReadResponse) {
	var config WorkspaceIdsDataSourceModel

	// Read Terraform configuration data into the model
	resp.Diagnostics.Append(req.Config.Get(ctx, &config)...)

	if resp.Diagnostics.HasError() {
		return
	}

	// Call the new ListWorkspaces API endpoint
	request := operations.ListWorkspacesRequest{}
	
	response, err := d.client.Workspaces.ListWorkspaces(ctx, request)
	if err != nil {
		resp.Diagnostics.AddError("Client Error", fmt.Sprintf("Unable to read workspaces, got error: %s", err))
		return
	}

	// Extract workspace IDs from the response
	var workspaceIds []attr.Value
	if response.WorkspacesResponse != nil {
		for _, workspace := range response.WorkspacesResponse.GetData() {
			workspaceIds = append(workspaceIds, types.StringValue(workspace.GetWorkspaceID()))
		}
	}

	ids, diags := types.ListValue(types.StringType, workspaceIds)
	resp.Diagnostics.Append(diags...)
	if resp.Diagnostics.HasError() {
		return
	}

	state := WorkspaceIdsDataSourceModel{
		Id:  types.StringValue(strconv.FormatInt(time.Now().Unix(), 10)),
		Ids: ids,
	}

	// Save data into Terraform state
	resp.Diagnostics.Append(resp.State.Set(ctx, &state)...)
}

