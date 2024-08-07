// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package provider

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

func (r *SourceFireboltResourceModel) ToSharedSourceFireboltCreateRequest() *shared.SourceFireboltCreateRequest {
	account := r.Configuration.Account.ValueString()
	clientID := r.Configuration.ClientID.ValueString()
	clientSecret := r.Configuration.ClientSecret.ValueString()
	database := r.Configuration.Database.ValueString()
	engine := r.Configuration.Engine.ValueString()
	host := new(string)
	if !r.Configuration.Host.IsUnknown() && !r.Configuration.Host.IsNull() {
		*host = r.Configuration.Host.ValueString()
	} else {
		host = nil
	}
	configuration := shared.SourceFirebolt{
		Account:      account,
		ClientID:     clientID,
		ClientSecret: clientSecret,
		Database:     database,
		Engine:       engine,
		Host:         host,
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
	out := shared.SourceFireboltCreateRequest{
		Configuration: configuration,
		DefinitionID:  definitionID,
		Name:          name,
		SecretID:      secretID,
		WorkspaceID:   workspaceID,
	}
	return &out
}

func (r *SourceFireboltResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
	if resp != nil {
		r.Name = types.StringValue(resp.Name)
		r.SourceID = types.StringValue(resp.SourceID)
		r.SourceType = types.StringValue(resp.SourceType)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *SourceFireboltResourceModel) ToSharedSourceFireboltPutRequest() *shared.SourceFireboltPutRequest {
	account := r.Configuration.Account.ValueString()
	clientID := r.Configuration.ClientID.ValueString()
	clientSecret := r.Configuration.ClientSecret.ValueString()
	database := r.Configuration.Database.ValueString()
	engine := r.Configuration.Engine.ValueString()
	host := new(string)
	if !r.Configuration.Host.IsUnknown() && !r.Configuration.Host.IsNull() {
		*host = r.Configuration.Host.ValueString()
	} else {
		host = nil
	}
	configuration := shared.SourceFireboltUpdate{
		Account:      account,
		ClientID:     clientID,
		ClientSecret: clientSecret,
		Database:     database,
		Engine:       engine,
		Host:         host,
	}
	name := r.Name.ValueString()
	workspaceID := r.WorkspaceID.ValueString()
	out := shared.SourceFireboltPutRequest{
		Configuration: configuration,
		Name:          name,
		WorkspaceID:   workspaceID,
	}
	return &out
}
