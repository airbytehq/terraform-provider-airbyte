// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package provider

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
	"time"
)

func (r *SourceKlaviyoResourceModel) ToSharedSourceKlaviyoCreateRequest() *shared.SourceKlaviyoCreateRequest {
	apiKey := r.Configuration.APIKey.ValueString()
	disableFetchingPredictiveAnalytics := new(bool)
	if !r.Configuration.DisableFetchingPredictiveAnalytics.IsUnknown() && !r.Configuration.DisableFetchingPredictiveAnalytics.IsNull() {
		*disableFetchingPredictiveAnalytics = r.Configuration.DisableFetchingPredictiveAnalytics.ValueBool()
	} else {
		disableFetchingPredictiveAnalytics = nil
	}
	startDate := new(time.Time)
	if !r.Configuration.StartDate.IsUnknown() && !r.Configuration.StartDate.IsNull() {
		*startDate, _ = time.Parse(time.RFC3339Nano, r.Configuration.StartDate.ValueString())
	} else {
		startDate = nil
	}
	configuration := shared.SourceKlaviyo{
		APIKey:                             apiKey,
		DisableFetchingPredictiveAnalytics: disableFetchingPredictiveAnalytics,
		StartDate:                          startDate,
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
	out := shared.SourceKlaviyoCreateRequest{
		Configuration: configuration,
		DefinitionID:  definitionID,
		Name:          name,
		SecretID:      secretID,
		WorkspaceID:   workspaceID,
	}
	return &out
}

func (r *SourceKlaviyoResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
	if resp != nil {
		r.Name = types.StringValue(resp.Name)
		r.SourceID = types.StringValue(resp.SourceID)
		r.SourceType = types.StringValue(resp.SourceType)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *SourceKlaviyoResourceModel) ToSharedSourceKlaviyoPutRequest() *shared.SourceKlaviyoPutRequest {
	apiKey := r.Configuration.APIKey.ValueString()
	disableFetchingPredictiveAnalytics := new(bool)
	if !r.Configuration.DisableFetchingPredictiveAnalytics.IsUnknown() && !r.Configuration.DisableFetchingPredictiveAnalytics.IsNull() {
		*disableFetchingPredictiveAnalytics = r.Configuration.DisableFetchingPredictiveAnalytics.ValueBool()
	} else {
		disableFetchingPredictiveAnalytics = nil
	}
	startDate := new(time.Time)
	if !r.Configuration.StartDate.IsUnknown() && !r.Configuration.StartDate.IsNull() {
		*startDate, _ = time.Parse(time.RFC3339Nano, r.Configuration.StartDate.ValueString())
	} else {
		startDate = nil
	}
	configuration := shared.SourceKlaviyoUpdate{
		APIKey:                             apiKey,
		DisableFetchingPredictiveAnalytics: disableFetchingPredictiveAnalytics,
		StartDate:                          startDate,
	}
	name := r.Name.ValueString()
	workspaceID := r.WorkspaceID.ValueString()
	out := shared.SourceKlaviyoPutRequest{
		Configuration: configuration,
		Name:          name,
		WorkspaceID:   workspaceID,
	}
	return &out
}
