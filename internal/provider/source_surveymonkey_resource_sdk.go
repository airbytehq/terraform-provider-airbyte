// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package provider

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
	"time"
)

func (r *SourceSurveymonkeyResourceModel) ToSharedSourceSurveymonkeyCreateRequest() *shared.SourceSurveymonkeyCreateRequest {
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

	origin := new(shared.OriginDatacenterOfTheSurveyMonkeyAccount)
	if !r.Configuration.Origin.IsUnknown() && !r.Configuration.Origin.IsNull() {
		*origin = shared.OriginDatacenterOfTheSurveyMonkeyAccount(r.Configuration.Origin.ValueString())
	} else {
		origin = nil
	}
	clientID := new(string)
	if !r.Configuration.Credentials.ClientID.IsUnknown() && !r.Configuration.Credentials.ClientID.IsNull() {
		*clientID = r.Configuration.Credentials.ClientID.ValueString()
	} else {
		clientID = nil
	}
	clientSecret := new(string)
	if !r.Configuration.Credentials.ClientSecret.IsUnknown() && !r.Configuration.Credentials.ClientSecret.IsNull() {
		*clientSecret = r.Configuration.Credentials.ClientSecret.ValueString()
	} else {
		clientSecret = nil
	}
	var accessToken string
	accessToken = r.Configuration.Credentials.AccessToken.ValueString()

	credentials := shared.SurveyMonkeyAuthorizationMethod{
		ClientID:     clientID,
		ClientSecret: clientSecret,
		AccessToken:  accessToken,
	}
	startDate, _ := time.Parse(time.RFC3339Nano, r.Configuration.StartDate.ValueString())
	var surveyIds []string = []string{}
	for _, surveyIdsItem := range r.Configuration.SurveyIds {
		surveyIds = append(surveyIds, surveyIdsItem.ValueString())
	}
	configuration := shared.SourceSurveymonkey{
		Origin:      origin,
		Credentials: credentials,
		StartDate:   startDate,
		SurveyIds:   surveyIds,
	}
	secretID := new(string)
	if !r.SecretID.IsUnknown() && !r.SecretID.IsNull() {
		*secretID = r.SecretID.ValueString()
	} else {
		secretID = nil
	}
	out := shared.SourceSurveymonkeyCreateRequest{
		Name:          name,
		DefinitionID:  definitionID,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
		SecretID:      secretID,
	}
	return &out
}

func (r *SourceSurveymonkeyResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
	if resp != nil {
		r.CreatedAt = types.Int64Value(resp.CreatedAt)
		r.DefinitionID = types.StringValue(resp.DefinitionID)
		r.Name = types.StringValue(resp.Name)
		r.SourceID = types.StringValue(resp.SourceID)
		r.SourceType = types.StringValue(resp.SourceType)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *SourceSurveymonkeyResourceModel) ToSharedSourceSurveymonkeyPutRequest() *shared.SourceSurveymonkeyPutRequest {
	var name string
	name = r.Name.ValueString()

	var workspaceID string
	workspaceID = r.WorkspaceID.ValueString()

	origin := new(shared.SourceSurveymonkeyUpdateOriginDatacenterOfTheSurveyMonkeyAccount)
	if !r.Configuration.Origin.IsUnknown() && !r.Configuration.Origin.IsNull() {
		*origin = shared.SourceSurveymonkeyUpdateOriginDatacenterOfTheSurveyMonkeyAccount(r.Configuration.Origin.ValueString())
	} else {
		origin = nil
	}
	clientID := new(string)
	if !r.Configuration.Credentials.ClientID.IsUnknown() && !r.Configuration.Credentials.ClientID.IsNull() {
		*clientID = r.Configuration.Credentials.ClientID.ValueString()
	} else {
		clientID = nil
	}
	clientSecret := new(string)
	if !r.Configuration.Credentials.ClientSecret.IsUnknown() && !r.Configuration.Credentials.ClientSecret.IsNull() {
		*clientSecret = r.Configuration.Credentials.ClientSecret.ValueString()
	} else {
		clientSecret = nil
	}
	var accessToken string
	accessToken = r.Configuration.Credentials.AccessToken.ValueString()

	credentials := shared.SourceSurveymonkeyUpdateSurveyMonkeyAuthorizationMethod{
		ClientID:     clientID,
		ClientSecret: clientSecret,
		AccessToken:  accessToken,
	}
	startDate, _ := time.Parse(time.RFC3339Nano, r.Configuration.StartDate.ValueString())
	var surveyIds []string = []string{}
	for _, surveyIdsItem := range r.Configuration.SurveyIds {
		surveyIds = append(surveyIds, surveyIdsItem.ValueString())
	}
	configuration := shared.SourceSurveymonkeyUpdate{
		Origin:      origin,
		Credentials: credentials,
		StartDate:   startDate,
		SurveyIds:   surveyIds,
	}
	out := shared.SourceSurveymonkeyPutRequest{
		Name:          name,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
	}
	return &out
}
