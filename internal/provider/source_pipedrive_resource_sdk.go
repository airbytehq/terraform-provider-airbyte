// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package provider

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

func (r *SourcePipedriveResourceModel) ToSharedSourcePipedriveCreateRequest() *shared.SourcePipedriveCreateRequest {
	apiToken := r.Configuration.APIToken.ValueString()
	replicationStartDate := r.Configuration.ReplicationStartDate.ValueString()
	configuration := shared.SourcePipedrive{
		APIToken:             apiToken,
		ReplicationStartDate: replicationStartDate,
	}
	definitionID := new(string)
	if !r.DefinitionID.IsUnknown() && !r.DefinitionID.IsNull() {
		*definitionID = r.DefinitionID.ValueString()
	} else {
		definitionID = nil
	}
	name := r.Name.ValueString()
	secretID := new(string)
	if !r.SecretID.IsUnknown() && !r.SecretID.IsNull() {
		*secretID = r.SecretID.ValueString()
	} else {
		secretID = nil
	}
	workspaceID := r.WorkspaceID.ValueString()
	out := shared.SourcePipedriveCreateRequest{
		Configuration: configuration,
		DefinitionID:  definitionID,
		Name:          name,
		SecretID:      secretID,
		WorkspaceID:   workspaceID,
	}
	return &out
}

func (r *SourcePipedriveResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
	if resp != nil {
		r.Name = types.StringValue(resp.Name)
		r.SourceID = types.StringValue(resp.SourceID)
		r.SourceType = types.StringValue(resp.SourceType)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *SourcePipedriveResourceModel) ToSharedSourcePipedrivePutRequest() *shared.SourcePipedrivePutRequest {
	apiToken := r.Configuration.APIToken.ValueString()
	replicationStartDate := r.Configuration.ReplicationStartDate.ValueString()
	configuration := shared.SourcePipedriveUpdate{
		APIToken:             apiToken,
		ReplicationStartDate: replicationStartDate,
	}
	name := r.Name.ValueString()
	workspaceID := r.WorkspaceID.ValueString()
	out := shared.SourcePipedrivePutRequest{
		Configuration: configuration,
		Name:          name,
		WorkspaceID:   workspaceID,
	}
	return &out
}
