// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package provider

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

func (r *SourcePipelinerResourceModel) ToSharedSourcePipelinerCreateRequest() *shared.SourcePipelinerCreateRequest {
	var name string
	name = r.Name.ValueString()

	definitionID := new(string)
	if !r.DefinitionID.IsUnknown() && !r.DefinitionID.IsNull() {
		*definitionID = r.DefinitionID.ValueString()
	} else {
		definitionID = nil
	}
	var workspaceID string
	workspaceID = r.WorkspaceID.ValueString()

	var username string
	username = r.Configuration.Username.ValueString()

	password := new(string)
	if !r.Configuration.Password.IsUnknown() && !r.Configuration.Password.IsNull() {
		*password = r.Configuration.Password.ValueString()
	} else {
		password = nil
	}
	service := shared.DataCenter(r.Configuration.Service.ValueString())
	var spaceid string
	spaceid = r.Configuration.Spaceid.ValueString()

	configuration := shared.SourcePipeliner{
		Username: username,
		Password: password,
		Service:  service,
		Spaceid:  spaceid,
	}
	secretID := new(string)
	if !r.SecretID.IsUnknown() && !r.SecretID.IsNull() {
		*secretID = r.SecretID.ValueString()
	} else {
		secretID = nil
	}
	out := shared.SourcePipelinerCreateRequest{
		Name:          name,
		DefinitionID:  definitionID,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
		SecretID:      secretID,
	}
	return &out
}

func (r *SourcePipelinerResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
	if resp != nil {
		r.CreatedAt = types.Int64Value(resp.CreatedAt)
		r.DefinitionID = types.StringValue(resp.DefinitionID)
		r.Name = types.StringValue(resp.Name)
		r.SourceID = types.StringValue(resp.SourceID)
		r.SourceType = types.StringValue(resp.SourceType)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *SourcePipelinerResourceModel) ToSharedSourcePipelinerPutRequest() *shared.SourcePipelinerPutRequest {
	var name string
	name = r.Name.ValueString()

	var workspaceID string
	workspaceID = r.WorkspaceID.ValueString()

	var username string
	username = r.Configuration.Username.ValueString()

	password := new(string)
	if !r.Configuration.Password.IsUnknown() && !r.Configuration.Password.IsNull() {
		*password = r.Configuration.Password.ValueString()
	} else {
		password = nil
	}
	service := shared.SourcePipelinerUpdateDataCenter(r.Configuration.Service.ValueString())
	var spaceid string
	spaceid = r.Configuration.Spaceid.ValueString()

	configuration := shared.SourcePipelinerUpdate{
		Username: username,
		Password: password,
		Service:  service,
		Spaceid:  spaceid,
	}
	out := shared.SourcePipelinerPutRequest{
		Name:          name,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
	}
	return &out
}
