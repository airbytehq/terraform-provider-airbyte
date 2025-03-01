// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package provider

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
	"time"
)

func (r *SourceOuraResourceModel) ToSharedSourceOuraCreateRequest() *shared.SourceOuraCreateRequest {
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

	var apiKey string
	apiKey = r.Configuration.APIKey.ValueString()

	startDatetime := new(time.Time)
	if !r.Configuration.StartDatetime.IsUnknown() && !r.Configuration.StartDatetime.IsNull() {
		*startDatetime, _ = time.Parse(time.RFC3339Nano, r.Configuration.StartDatetime.ValueString())
	} else {
		startDatetime = nil
	}
	endDatetime := new(time.Time)
	if !r.Configuration.EndDatetime.IsUnknown() && !r.Configuration.EndDatetime.IsNull() {
		*endDatetime, _ = time.Parse(time.RFC3339Nano, r.Configuration.EndDatetime.ValueString())
	} else {
		endDatetime = nil
	}
	configuration := shared.SourceOura{
		APIKey:        apiKey,
		StartDatetime: startDatetime,
		EndDatetime:   endDatetime,
	}
	secretID := new(string)
	if !r.SecretID.IsUnknown() && !r.SecretID.IsNull() {
		*secretID = r.SecretID.ValueString()
	} else {
		secretID = nil
	}
	out := shared.SourceOuraCreateRequest{
		Name:          name,
		DefinitionID:  definitionID,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
		SecretID:      secretID,
	}
	return &out
}

func (r *SourceOuraResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
	if resp != nil {
		r.CreatedAt = types.Int64Value(resp.CreatedAt)
		r.DefinitionID = types.StringValue(resp.DefinitionID)
		r.Name = types.StringValue(resp.Name)
		r.SourceID = types.StringValue(resp.SourceID)
		r.SourceType = types.StringValue(resp.SourceType)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *SourceOuraResourceModel) ToSharedSourceOuraPutRequest() *shared.SourceOuraPutRequest {
	var name string
	name = r.Name.ValueString()

	var workspaceID string
	workspaceID = r.WorkspaceID.ValueString()

	var apiKey string
	apiKey = r.Configuration.APIKey.ValueString()

	startDatetime := new(time.Time)
	if !r.Configuration.StartDatetime.IsUnknown() && !r.Configuration.StartDatetime.IsNull() {
		*startDatetime, _ = time.Parse(time.RFC3339Nano, r.Configuration.StartDatetime.ValueString())
	} else {
		startDatetime = nil
	}
	endDatetime := new(time.Time)
	if !r.Configuration.EndDatetime.IsUnknown() && !r.Configuration.EndDatetime.IsNull() {
		*endDatetime, _ = time.Parse(time.RFC3339Nano, r.Configuration.EndDatetime.ValueString())
	} else {
		endDatetime = nil
	}
	configuration := shared.SourceOuraUpdate{
		APIKey:        apiKey,
		StartDatetime: startDatetime,
		EndDatetime:   endDatetime,
	}
	out := shared.SourceOuraPutRequest{
		Name:          name,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
	}
	return &out
}
