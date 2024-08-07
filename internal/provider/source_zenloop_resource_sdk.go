// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package provider

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

func (r *SourceZenloopResourceModel) ToSharedSourceZenloopCreateRequest() *shared.SourceZenloopCreateRequest {
	apiToken := r.Configuration.APIToken.ValueString()
	dateFrom := new(string)
	if !r.Configuration.DateFrom.IsUnknown() && !r.Configuration.DateFrom.IsNull() {
		*dateFrom = r.Configuration.DateFrom.ValueString()
	} else {
		dateFrom = nil
	}
	surveyGroupID := new(string)
	if !r.Configuration.SurveyGroupID.IsUnknown() && !r.Configuration.SurveyGroupID.IsNull() {
		*surveyGroupID = r.Configuration.SurveyGroupID.ValueString()
	} else {
		surveyGroupID = nil
	}
	surveyID := new(string)
	if !r.Configuration.SurveyID.IsUnknown() && !r.Configuration.SurveyID.IsNull() {
		*surveyID = r.Configuration.SurveyID.ValueString()
	} else {
		surveyID = nil
	}
	configuration := shared.SourceZenloop{
		APIToken:      apiToken,
		DateFrom:      dateFrom,
		SurveyGroupID: surveyGroupID,
		SurveyID:      surveyID,
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
	out := shared.SourceZenloopCreateRequest{
		Configuration: configuration,
		DefinitionID:  definitionID,
		Name:          name,
		SecretID:      secretID,
		WorkspaceID:   workspaceID,
	}
	return &out
}

func (r *SourceZenloopResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
	if resp != nil {
		r.Name = types.StringValue(resp.Name)
		r.SourceID = types.StringValue(resp.SourceID)
		r.SourceType = types.StringValue(resp.SourceType)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *SourceZenloopResourceModel) ToSharedSourceZenloopPutRequest() *shared.SourceZenloopPutRequest {
	apiToken := r.Configuration.APIToken.ValueString()
	dateFrom := new(string)
	if !r.Configuration.DateFrom.IsUnknown() && !r.Configuration.DateFrom.IsNull() {
		*dateFrom = r.Configuration.DateFrom.ValueString()
	} else {
		dateFrom = nil
	}
	surveyGroupID := new(string)
	if !r.Configuration.SurveyGroupID.IsUnknown() && !r.Configuration.SurveyGroupID.IsNull() {
		*surveyGroupID = r.Configuration.SurveyGroupID.ValueString()
	} else {
		surveyGroupID = nil
	}
	surveyID := new(string)
	if !r.Configuration.SurveyID.IsUnknown() && !r.Configuration.SurveyID.IsNull() {
		*surveyID = r.Configuration.SurveyID.ValueString()
	} else {
		surveyID = nil
	}
	configuration := shared.SourceZenloopUpdate{
		APIToken:      apiToken,
		DateFrom:      dateFrom,
		SurveyGroupID: surveyGroupID,
		SurveyID:      surveyID,
	}
	name := r.Name.ValueString()
	workspaceID := r.WorkspaceID.ValueString()
	out := shared.SourceZenloopPutRequest{
		Configuration: configuration,
		Name:          name,
		WorkspaceID:   workspaceID,
	}
	return &out
}
