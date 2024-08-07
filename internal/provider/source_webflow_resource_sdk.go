// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package provider

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

func (r *SourceWebflowResourceModel) ToSharedSourceWebflowCreateRequest() *shared.SourceWebflowCreateRequest {
	acceptVersion := new(string)
	if !r.Configuration.AcceptVersion.IsUnknown() && !r.Configuration.AcceptVersion.IsNull() {
		*acceptVersion = r.Configuration.AcceptVersion.ValueString()
	} else {
		acceptVersion = nil
	}
	apiKey := r.Configuration.APIKey.ValueString()
	siteID := r.Configuration.SiteID.ValueString()
	configuration := shared.SourceWebflow{
		AcceptVersion: acceptVersion,
		APIKey:        apiKey,
		SiteID:        siteID,
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
	out := shared.SourceWebflowCreateRequest{
		Configuration: configuration,
		DefinitionID:  definitionID,
		Name:          name,
		SecretID:      secretID,
		WorkspaceID:   workspaceID,
	}
	return &out
}

func (r *SourceWebflowResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
	if resp != nil {
		r.Name = types.StringValue(resp.Name)
		r.SourceID = types.StringValue(resp.SourceID)
		r.SourceType = types.StringValue(resp.SourceType)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *SourceWebflowResourceModel) ToSharedSourceWebflowPutRequest() *shared.SourceWebflowPutRequest {
	acceptVersion := new(string)
	if !r.Configuration.AcceptVersion.IsUnknown() && !r.Configuration.AcceptVersion.IsNull() {
		*acceptVersion = r.Configuration.AcceptVersion.ValueString()
	} else {
		acceptVersion = nil
	}
	apiKey := r.Configuration.APIKey.ValueString()
	siteID := r.Configuration.SiteID.ValueString()
	configuration := shared.SourceWebflowUpdate{
		AcceptVersion: acceptVersion,
		APIKey:        apiKey,
		SiteID:        siteID,
	}
	name := r.Name.ValueString()
	workspaceID := r.WorkspaceID.ValueString()
	out := shared.SourceWebflowPutRequest{
		Configuration: configuration,
		Name:          name,
		WorkspaceID:   workspaceID,
	}
	return &out
}
