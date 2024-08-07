// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package provider

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

func (r *DestinationConvexResourceModel) ToSharedDestinationConvexCreateRequest() *shared.DestinationConvexCreateRequest {
	accessKey := r.Configuration.AccessKey.ValueString()
	deploymentURL := r.Configuration.DeploymentURL.ValueString()
	configuration := shared.DestinationConvex{
		AccessKey:     accessKey,
		DeploymentURL: deploymentURL,
	}
	definitionID := new(string)
	if !r.DefinitionID.IsUnknown() && !r.DefinitionID.IsNull() {
		*definitionID = r.DefinitionID.ValueString()
	} else {
		definitionID = nil
	}
	name := r.Name.ValueString()
	workspaceID := r.WorkspaceID.ValueString()
	out := shared.DestinationConvexCreateRequest{
		Configuration: configuration,
		DefinitionID:  definitionID,
		Name:          name,
		WorkspaceID:   workspaceID,
	}
	return &out
}

func (r *DestinationConvexResourceModel) RefreshFromSharedDestinationResponse(resp *shared.DestinationResponse) {
	if resp != nil {
		r.DestinationID = types.StringValue(resp.DestinationID)
		r.DestinationType = types.StringValue(resp.DestinationType)
		r.Name = types.StringValue(resp.Name)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *DestinationConvexResourceModel) ToSharedDestinationConvexPutRequest() *shared.DestinationConvexPutRequest {
	accessKey := r.Configuration.AccessKey.ValueString()
	deploymentURL := r.Configuration.DeploymentURL.ValueString()
	configuration := shared.DestinationConvexUpdate{
		AccessKey:     accessKey,
		DeploymentURL: deploymentURL,
	}
	name := r.Name.ValueString()
	workspaceID := r.WorkspaceID.ValueString()
	out := shared.DestinationConvexPutRequest{
		Configuration: configuration,
		Name:          name,
		WorkspaceID:   workspaceID,
	}
	return &out
}
