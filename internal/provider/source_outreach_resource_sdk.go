// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package provider

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

func (r *SourceOutreachResourceModel) ToSharedSourceOutreachCreateRequest() *shared.SourceOutreachCreateRequest {
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

	var clientID string
	clientID = r.Configuration.ClientID.ValueString()

	var clientSecret string
	clientSecret = r.Configuration.ClientSecret.ValueString()

	var refreshToken string
	refreshToken = r.Configuration.RefreshToken.ValueString()

	var redirectURI string
	redirectURI = r.Configuration.RedirectURI.ValueString()

	var startDate string
	startDate = r.Configuration.StartDate.ValueString()

	configuration := shared.SourceOutreach{
		ClientID:     clientID,
		ClientSecret: clientSecret,
		RefreshToken: refreshToken,
		RedirectURI:  redirectURI,
		StartDate:    startDate,
	}
	secretID := new(string)
	if !r.SecretID.IsUnknown() && !r.SecretID.IsNull() {
		*secretID = r.SecretID.ValueString()
	} else {
		secretID = nil
	}
	out := shared.SourceOutreachCreateRequest{
		Name:          name,
		DefinitionID:  definitionID,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
		SecretID:      secretID,
	}
	return &out
}

func (r *SourceOutreachResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
	if resp != nil {
		r.CreatedAt = types.Int64Value(resp.CreatedAt)
		r.DefinitionID = types.StringValue(resp.DefinitionID)
		r.Name = types.StringValue(resp.Name)
		r.SourceID = types.StringValue(resp.SourceID)
		r.SourceType = types.StringValue(resp.SourceType)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *SourceOutreachResourceModel) ToSharedSourceOutreachPutRequest() *shared.SourceOutreachPutRequest {
	var name string
	name = r.Name.ValueString()

	var workspaceID string
	workspaceID = r.WorkspaceID.ValueString()

	var clientID string
	clientID = r.Configuration.ClientID.ValueString()

	var clientSecret string
	clientSecret = r.Configuration.ClientSecret.ValueString()

	var refreshToken string
	refreshToken = r.Configuration.RefreshToken.ValueString()

	var redirectURI string
	redirectURI = r.Configuration.RedirectURI.ValueString()

	var startDate string
	startDate = r.Configuration.StartDate.ValueString()

	configuration := shared.SourceOutreachUpdate{
		ClientID:     clientID,
		ClientSecret: clientSecret,
		RefreshToken: refreshToken,
		RedirectURI:  redirectURI,
		StartDate:    startDate,
	}
	out := shared.SourceOutreachPutRequest{
		Name:          name,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
	}
	return &out
}
