// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package provider

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

func (r *SourceMetabaseResourceModel) ToSharedSourceMetabaseCreateRequest() *shared.SourceMetabaseCreateRequest {
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

	var instanceAPIURL string
	instanceAPIURL = r.Configuration.InstanceAPIURL.ValueString()

	var username string
	username = r.Configuration.Username.ValueString()

	password := new(string)
	if !r.Configuration.Password.IsUnknown() && !r.Configuration.Password.IsNull() {
		*password = r.Configuration.Password.ValueString()
	} else {
		password = nil
	}
	sessionToken := new(string)
	if !r.Configuration.SessionToken.IsUnknown() && !r.Configuration.SessionToken.IsNull() {
		*sessionToken = r.Configuration.SessionToken.ValueString()
	} else {
		sessionToken = nil
	}
	configuration := shared.SourceMetabase{
		InstanceAPIURL: instanceAPIURL,
		Username:       username,
		Password:       password,
		SessionToken:   sessionToken,
	}
	secretID := new(string)
	if !r.SecretID.IsUnknown() && !r.SecretID.IsNull() {
		*secretID = r.SecretID.ValueString()
	} else {
		secretID = nil
	}
	out := shared.SourceMetabaseCreateRequest{
		Name:          name,
		DefinitionID:  definitionID,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
		SecretID:      secretID,
	}
	return &out
}

func (r *SourceMetabaseResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
	if resp != nil {
		r.CreatedAt = types.Int64Value(resp.CreatedAt)
		r.DefinitionID = types.StringValue(resp.DefinitionID)
		r.Name = types.StringValue(resp.Name)
		r.SourceID = types.StringValue(resp.SourceID)
		r.SourceType = types.StringValue(resp.SourceType)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *SourceMetabaseResourceModel) ToSharedSourceMetabasePutRequest() *shared.SourceMetabasePutRequest {
	var name string
	name = r.Name.ValueString()

	var workspaceID string
	workspaceID = r.WorkspaceID.ValueString()

	var instanceAPIURL string
	instanceAPIURL = r.Configuration.InstanceAPIURL.ValueString()

	var username string
	username = r.Configuration.Username.ValueString()

	password := new(string)
	if !r.Configuration.Password.IsUnknown() && !r.Configuration.Password.IsNull() {
		*password = r.Configuration.Password.ValueString()
	} else {
		password = nil
	}
	sessionToken := new(string)
	if !r.Configuration.SessionToken.IsUnknown() && !r.Configuration.SessionToken.IsNull() {
		*sessionToken = r.Configuration.SessionToken.ValueString()
	} else {
		sessionToken = nil
	}
	configuration := shared.SourceMetabaseUpdate{
		InstanceAPIURL: instanceAPIURL,
		Username:       username,
		Password:       password,
		SessionToken:   sessionToken,
	}
	out := shared.SourceMetabasePutRequest{
		Name:          name,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
	}
	return &out
}
