// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package provider

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

func (r *SourceOutbrainAmplifyResourceModel) ToSharedSourceOutbrainAmplifyCreateRequest() *shared.SourceOutbrainAmplifyCreateRequest {
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

	var credentials shared.SourceOutbrainAmplifyAuthenticationMethod
	var sourceOutbrainAmplifyAccessToken *shared.SourceOutbrainAmplifyAccessToken
	if r.Configuration.Credentials.AccessToken != nil {
		var accessToken string
		accessToken = r.Configuration.Credentials.AccessToken.AccessToken.ValueString()

		sourceOutbrainAmplifyAccessToken = &shared.SourceOutbrainAmplifyAccessToken{
			AccessToken: accessToken,
		}
	}
	if sourceOutbrainAmplifyAccessToken != nil {
		credentials = shared.SourceOutbrainAmplifyAuthenticationMethod{
			SourceOutbrainAmplifyAccessToken: sourceOutbrainAmplifyAccessToken,
		}
	}
	var usernamePassword *shared.UsernamePassword
	if r.Configuration.Credentials.UsernamePassword != nil {
		var username string
		username = r.Configuration.Credentials.UsernamePassword.Username.ValueString()

		var password string
		password = r.Configuration.Credentials.UsernamePassword.Password.ValueString()

		usernamePassword = &shared.UsernamePassword{
			Username: username,
			Password: password,
		}
	}
	if usernamePassword != nil {
		credentials = shared.SourceOutbrainAmplifyAuthenticationMethod{
			UsernamePassword: usernamePassword,
		}
	}
	reportGranularity := new(shared.GranularityForPeriodicReports)
	if !r.Configuration.ReportGranularity.IsUnknown() && !r.Configuration.ReportGranularity.IsNull() {
		*reportGranularity = shared.GranularityForPeriodicReports(r.Configuration.ReportGranularity.ValueString())
	} else {
		reportGranularity = nil
	}
	geoLocationBreakdown := new(shared.GranularityForGeoLocationRegion)
	if !r.Configuration.GeoLocationBreakdown.IsUnknown() && !r.Configuration.GeoLocationBreakdown.IsNull() {
		*geoLocationBreakdown = shared.GranularityForGeoLocationRegion(r.Configuration.GeoLocationBreakdown.ValueString())
	} else {
		geoLocationBreakdown = nil
	}
	var startDate string
	startDate = r.Configuration.StartDate.ValueString()

	endDate := new(string)
	if !r.Configuration.EndDate.IsUnknown() && !r.Configuration.EndDate.IsNull() {
		*endDate = r.Configuration.EndDate.ValueString()
	} else {
		endDate = nil
	}
	configuration := shared.SourceOutbrainAmplify{
		Credentials:          credentials,
		ReportGranularity:    reportGranularity,
		GeoLocationBreakdown: geoLocationBreakdown,
		StartDate:            startDate,
		EndDate:              endDate,
	}
	secretID := new(string)
	if !r.SecretID.IsUnknown() && !r.SecretID.IsNull() {
		*secretID = r.SecretID.ValueString()
	} else {
		secretID = nil
	}
	out := shared.SourceOutbrainAmplifyCreateRequest{
		Name:          name,
		DefinitionID:  definitionID,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
		SecretID:      secretID,
	}
	return &out
}

func (r *SourceOutbrainAmplifyResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
	if resp != nil {
		r.CreatedAt = types.Int64Value(resp.CreatedAt)
		r.DefinitionID = types.StringValue(resp.DefinitionID)
		r.Name = types.StringValue(resp.Name)
		r.SourceID = types.StringValue(resp.SourceID)
		r.SourceType = types.StringValue(resp.SourceType)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *SourceOutbrainAmplifyResourceModel) ToSharedSourceOutbrainAmplifyPutRequest() *shared.SourceOutbrainAmplifyPutRequest {
	var name string
	name = r.Name.ValueString()

	var workspaceID string
	workspaceID = r.WorkspaceID.ValueString()

	var credentials shared.SourceOutbrainAmplifyUpdateAuthenticationMethod
	var sourceOutbrainAmplifyUpdateAccessToken *shared.SourceOutbrainAmplifyUpdateAccessToken
	if r.Configuration.Credentials.AccessToken != nil {
		var accessToken string
		accessToken = r.Configuration.Credentials.AccessToken.AccessToken.ValueString()

		sourceOutbrainAmplifyUpdateAccessToken = &shared.SourceOutbrainAmplifyUpdateAccessToken{
			AccessToken: accessToken,
		}
	}
	if sourceOutbrainAmplifyUpdateAccessToken != nil {
		credentials = shared.SourceOutbrainAmplifyUpdateAuthenticationMethod{
			SourceOutbrainAmplifyUpdateAccessToken: sourceOutbrainAmplifyUpdateAccessToken,
		}
	}
	var sourceOutbrainAmplifyUpdateUsernamePassword *shared.SourceOutbrainAmplifyUpdateUsernamePassword
	if r.Configuration.Credentials.UsernamePassword != nil {
		var username string
		username = r.Configuration.Credentials.UsernamePassword.Username.ValueString()

		var password string
		password = r.Configuration.Credentials.UsernamePassword.Password.ValueString()

		sourceOutbrainAmplifyUpdateUsernamePassword = &shared.SourceOutbrainAmplifyUpdateUsernamePassword{
			Username: username,
			Password: password,
		}
	}
	if sourceOutbrainAmplifyUpdateUsernamePassword != nil {
		credentials = shared.SourceOutbrainAmplifyUpdateAuthenticationMethod{
			SourceOutbrainAmplifyUpdateUsernamePassword: sourceOutbrainAmplifyUpdateUsernamePassword,
		}
	}
	reportGranularity := new(shared.SourceOutbrainAmplifyUpdateGranularityForPeriodicReports)
	if !r.Configuration.ReportGranularity.IsUnknown() && !r.Configuration.ReportGranularity.IsNull() {
		*reportGranularity = shared.SourceOutbrainAmplifyUpdateGranularityForPeriodicReports(r.Configuration.ReportGranularity.ValueString())
	} else {
		reportGranularity = nil
	}
	geoLocationBreakdown := new(shared.SourceOutbrainAmplifyUpdateGranularityForGeoLocationRegion)
	if !r.Configuration.GeoLocationBreakdown.IsUnknown() && !r.Configuration.GeoLocationBreakdown.IsNull() {
		*geoLocationBreakdown = shared.SourceOutbrainAmplifyUpdateGranularityForGeoLocationRegion(r.Configuration.GeoLocationBreakdown.ValueString())
	} else {
		geoLocationBreakdown = nil
	}
	var startDate string
	startDate = r.Configuration.StartDate.ValueString()

	endDate := new(string)
	if !r.Configuration.EndDate.IsUnknown() && !r.Configuration.EndDate.IsNull() {
		*endDate = r.Configuration.EndDate.ValueString()
	} else {
		endDate = nil
	}
	configuration := shared.SourceOutbrainAmplifyUpdate{
		Credentials:          credentials,
		ReportGranularity:    reportGranularity,
		GeoLocationBreakdown: geoLocationBreakdown,
		StartDate:            startDate,
		EndDate:              endDate,
	}
	out := shared.SourceOutbrainAmplifyPutRequest{
		Name:          name,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
	}
	return &out
}
