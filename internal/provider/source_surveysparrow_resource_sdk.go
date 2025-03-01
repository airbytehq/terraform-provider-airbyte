// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package provider

import (
	"encoding/json"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

func (r *SourceSurveySparrowResourceModel) ToSharedSourceSurveySparrowCreateRequest() *shared.SourceSurveySparrowCreateRequest {
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

	var accessToken string
	accessToken = r.Configuration.AccessToken.ValueString()

	var region *shared.BaseURL
	if r.Configuration.Region != nil {
		var euBasedAccount *shared.EUBasedAccount
		if r.Configuration.Region.EUBasedAccount != nil {
			euBasedAccount = &shared.EUBasedAccount{}
		}
		if euBasedAccount != nil {
			region = &shared.BaseURL{
				EUBasedAccount: euBasedAccount,
			}
		}
		var globalAccount *shared.GlobalAccount
		if r.Configuration.Region.GlobalAccount != nil {
			globalAccount = &shared.GlobalAccount{}
		}
		if globalAccount != nil {
			region = &shared.BaseURL{
				GlobalAccount: globalAccount,
			}
		}
	}
	var surveyID []interface{} = []interface{}{}
	for _, surveyIDItem := range r.Configuration.SurveyID {
		var surveyIDTmp interface{}
		_ = json.Unmarshal([]byte(surveyIDItem.ValueString()), &surveyIDTmp)
		surveyID = append(surveyID, surveyIDTmp)
	}
	configuration := shared.SourceSurveySparrow{
		AccessToken: accessToken,
		Region:      region,
		SurveyID:    surveyID,
	}
	secretID := new(string)
	if !r.SecretID.IsUnknown() && !r.SecretID.IsNull() {
		*secretID = r.SecretID.ValueString()
	} else {
		secretID = nil
	}
	out := shared.SourceSurveySparrowCreateRequest{
		Name:          name,
		DefinitionID:  definitionID,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
		SecretID:      secretID,
	}
	return &out
}

func (r *SourceSurveySparrowResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
	if resp != nil {
		r.CreatedAt = types.Int64Value(resp.CreatedAt)
		r.DefinitionID = types.StringValue(resp.DefinitionID)
		r.Name = types.StringValue(resp.Name)
		r.SourceID = types.StringValue(resp.SourceID)
		r.SourceType = types.StringValue(resp.SourceType)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *SourceSurveySparrowResourceModel) ToSharedSourceSurveySparrowPutRequest() *shared.SourceSurveySparrowPutRequest {
	var name string
	name = r.Name.ValueString()

	var workspaceID string
	workspaceID = r.WorkspaceID.ValueString()

	var accessToken string
	accessToken = r.Configuration.AccessToken.ValueString()

	var region *shared.SourceSurveySparrowUpdateBaseURL
	if r.Configuration.Region != nil {
		var sourceSurveySparrowUpdateEUBasedAccount *shared.SourceSurveySparrowUpdateEUBasedAccount
		if r.Configuration.Region.EUBasedAccount != nil {
			sourceSurveySparrowUpdateEUBasedAccount = &shared.SourceSurveySparrowUpdateEUBasedAccount{}
		}
		if sourceSurveySparrowUpdateEUBasedAccount != nil {
			region = &shared.SourceSurveySparrowUpdateBaseURL{
				SourceSurveySparrowUpdateEUBasedAccount: sourceSurveySparrowUpdateEUBasedAccount,
			}
		}
		var sourceSurveySparrowUpdateGlobalAccount *shared.SourceSurveySparrowUpdateGlobalAccount
		if r.Configuration.Region.GlobalAccount != nil {
			sourceSurveySparrowUpdateGlobalAccount = &shared.SourceSurveySparrowUpdateGlobalAccount{}
		}
		if sourceSurveySparrowUpdateGlobalAccount != nil {
			region = &shared.SourceSurveySparrowUpdateBaseURL{
				SourceSurveySparrowUpdateGlobalAccount: sourceSurveySparrowUpdateGlobalAccount,
			}
		}
	}
	var surveyID []interface{} = []interface{}{}
	for _, surveyIDItem := range r.Configuration.SurveyID {
		var surveyIDTmp interface{}
		_ = json.Unmarshal([]byte(surveyIDItem.ValueString()), &surveyIDTmp)
		surveyID = append(surveyID, surveyIDTmp)
	}
	configuration := shared.SourceSurveySparrowUpdate{
		AccessToken: accessToken,
		Region:      region,
		SurveyID:    surveyID,
	}
	out := shared.SourceSurveySparrowPutRequest{
		Name:          name,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
	}
	return &out
}
