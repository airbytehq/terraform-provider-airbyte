// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package provider

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
	"time"
)

func (r *SourceHubspotResourceModel) ToSharedSourceHubspotCreateRequest() *shared.SourceHubspotCreateRequest {
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

	startDate := new(time.Time)
	if !r.Configuration.StartDate.IsUnknown() && !r.Configuration.StartDate.IsNull() {
		*startDate, _ = time.Parse(time.RFC3339Nano, r.Configuration.StartDate.ValueString())
	} else {
		startDate = nil
	}
	var credentials shared.SourceHubspotAuthentication
	var sourceHubspotOAuth *shared.SourceHubspotOAuth
	if r.Configuration.Credentials.OAuth != nil {
		var clientID string
		clientID = r.Configuration.Credentials.OAuth.ClientID.ValueString()

		var clientSecret string
		clientSecret = r.Configuration.Credentials.OAuth.ClientSecret.ValueString()

		var refreshToken string
		refreshToken = r.Configuration.Credentials.OAuth.RefreshToken.ValueString()

		sourceHubspotOAuth = &shared.SourceHubspotOAuth{
			ClientID:     clientID,
			ClientSecret: clientSecret,
			RefreshToken: refreshToken,
		}
	}
	if sourceHubspotOAuth != nil {
		credentials = shared.SourceHubspotAuthentication{
			SourceHubspotOAuth: sourceHubspotOAuth,
		}
	}
	var privateApp *shared.PrivateApp
	if r.Configuration.Credentials.PrivateApp != nil {
		var accessToken string
		accessToken = r.Configuration.Credentials.PrivateApp.AccessToken.ValueString()

		privateApp = &shared.PrivateApp{
			AccessToken: accessToken,
		}
	}
	if privateApp != nil {
		credentials = shared.SourceHubspotAuthentication{
			PrivateApp: privateApp,
		}
	}
	enableExperimentalStreams := new(bool)
	if !r.Configuration.EnableExperimentalStreams.IsUnknown() && !r.Configuration.EnableExperimentalStreams.IsNull() {
		*enableExperimentalStreams = r.Configuration.EnableExperimentalStreams.ValueBool()
	} else {
		enableExperimentalStreams = nil
	}
	configuration := shared.SourceHubspot{
		StartDate:                 startDate,
		Credentials:               credentials,
		EnableExperimentalStreams: enableExperimentalStreams,
	}
	secretID := new(string)
	if !r.SecretID.IsUnknown() && !r.SecretID.IsNull() {
		*secretID = r.SecretID.ValueString()
	} else {
		secretID = nil
	}
	out := shared.SourceHubspotCreateRequest{
		Name:          name,
		DefinitionID:  definitionID,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
		SecretID:      secretID,
	}
	return &out
}

func (r *SourceHubspotResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
	if resp != nil {
		r.CreatedAt = types.Int64Value(resp.CreatedAt)
		r.DefinitionID = types.StringValue(resp.DefinitionID)
		r.Name = types.StringValue(resp.Name)
		r.SourceID = types.StringValue(resp.SourceID)
		r.SourceType = types.StringValue(resp.SourceType)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *SourceHubspotResourceModel) ToSharedSourceHubspotPutRequest() *shared.SourceHubspotPutRequest {
	var name string
	name = r.Name.ValueString()

	var workspaceID string
	workspaceID = r.WorkspaceID.ValueString()

	startDate := new(time.Time)
	if !r.Configuration.StartDate.IsUnknown() && !r.Configuration.StartDate.IsNull() {
		*startDate, _ = time.Parse(time.RFC3339Nano, r.Configuration.StartDate.ValueString())
	} else {
		startDate = nil
	}
	var credentials shared.SourceHubspotUpdateAuthentication
	var sourceHubspotUpdateOAuth *shared.SourceHubspotUpdateOAuth
	if r.Configuration.Credentials.OAuth != nil {
		var clientID string
		clientID = r.Configuration.Credentials.OAuth.ClientID.ValueString()

		var clientSecret string
		clientSecret = r.Configuration.Credentials.OAuth.ClientSecret.ValueString()

		var refreshToken string
		refreshToken = r.Configuration.Credentials.OAuth.RefreshToken.ValueString()

		sourceHubspotUpdateOAuth = &shared.SourceHubspotUpdateOAuth{
			ClientID:     clientID,
			ClientSecret: clientSecret,
			RefreshToken: refreshToken,
		}
	}
	if sourceHubspotUpdateOAuth != nil {
		credentials = shared.SourceHubspotUpdateAuthentication{
			SourceHubspotUpdateOAuth: sourceHubspotUpdateOAuth,
		}
	}
	var sourceHubspotUpdatePrivateApp *shared.SourceHubspotUpdatePrivateApp
	if r.Configuration.Credentials.PrivateApp != nil {
		var accessToken string
		accessToken = r.Configuration.Credentials.PrivateApp.AccessToken.ValueString()

		sourceHubspotUpdatePrivateApp = &shared.SourceHubspotUpdatePrivateApp{
			AccessToken: accessToken,
		}
	}
	if sourceHubspotUpdatePrivateApp != nil {
		credentials = shared.SourceHubspotUpdateAuthentication{
			SourceHubspotUpdatePrivateApp: sourceHubspotUpdatePrivateApp,
		}
	}
	enableExperimentalStreams := new(bool)
	if !r.Configuration.EnableExperimentalStreams.IsUnknown() && !r.Configuration.EnableExperimentalStreams.IsNull() {
		*enableExperimentalStreams = r.Configuration.EnableExperimentalStreams.ValueBool()
	} else {
		enableExperimentalStreams = nil
	}
	configuration := shared.SourceHubspotUpdate{
		StartDate:                 startDate,
		Credentials:               credentials,
		EnableExperimentalStreams: enableExperimentalStreams,
	}
	out := shared.SourceHubspotPutRequest{
		Name:          name,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
	}
	return &out
}
