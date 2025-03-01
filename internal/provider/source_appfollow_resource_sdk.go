// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package provider

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

func (r *SourceAppfollowResourceModel) ToSharedSourceAppfollowCreateRequest() *shared.SourceAppfollowCreateRequest {
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

	apiSecret := new(string)
	if !r.Configuration.APISecret.IsUnknown() && !r.Configuration.APISecret.IsNull() {
		*apiSecret = r.Configuration.APISecret.ValueString()
	} else {
		apiSecret = nil
	}
	configuration := shared.SourceAppfollow{
		APISecret: apiSecret,
	}
	secretID := new(string)
	if !r.SecretID.IsUnknown() && !r.SecretID.IsNull() {
		*secretID = r.SecretID.ValueString()
	} else {
		secretID = nil
	}
	out := shared.SourceAppfollowCreateRequest{
		Name:          name,
		DefinitionID:  definitionID,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
		SecretID:      secretID,
	}
	return &out
}

func (r *SourceAppfollowResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
	if resp != nil {
		r.CreatedAt = types.Int64Value(resp.CreatedAt)
		r.DefinitionID = types.StringValue(resp.DefinitionID)
		r.Name = types.StringValue(resp.Name)
		r.SourceID = types.StringValue(resp.SourceID)
		r.SourceType = types.StringValue(resp.SourceType)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *SourceAppfollowResourceModel) ToSharedSourceAppfollowPutRequest() *shared.SourceAppfollowPutRequest {
	var name string
	name = r.Name.ValueString()

	var workspaceID string
	workspaceID = r.WorkspaceID.ValueString()

	apiSecret := new(string)
	if !r.Configuration.APISecret.IsUnknown() && !r.Configuration.APISecret.IsNull() {
		*apiSecret = r.Configuration.APISecret.ValueString()
	} else {
		apiSecret = nil
	}
	configuration := shared.SourceAppfollowUpdate{
		APISecret: apiSecret,
	}
	out := shared.SourceAppfollowPutRequest{
		Name:          name,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
	}
	return &out
}
