// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package provider

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
	"time"
)

func (r *SourceBambooHrResourceModel) ToSharedSourceBambooHrCreateRequest() *shared.SourceBambooHrCreateRequest {
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

	var subdomain string
	subdomain = r.Configuration.Subdomain.ValueString()

	customReportsFields := new(string)
	if !r.Configuration.CustomReportsFields.IsUnknown() && !r.Configuration.CustomReportsFields.IsNull() {
		*customReportsFields = r.Configuration.CustomReportsFields.ValueString()
	} else {
		customReportsFields = nil
	}
	customReportsIncludeDefaultFields := new(bool)
	if !r.Configuration.CustomReportsIncludeDefaultFields.IsUnknown() && !r.Configuration.CustomReportsIncludeDefaultFields.IsNull() {
		*customReportsIncludeDefaultFields = r.Configuration.CustomReportsIncludeDefaultFields.ValueBool()
	} else {
		customReportsIncludeDefaultFields = nil
	}
	startDate := new(time.Time)
	if !r.Configuration.StartDate.IsUnknown() && !r.Configuration.StartDate.IsNull() {
		*startDate, _ = time.Parse(time.RFC3339Nano, r.Configuration.StartDate.ValueString())
	} else {
		startDate = nil
	}
	configuration := shared.SourceBambooHr{
		APIKey:                            apiKey,
		Subdomain:                         subdomain,
		CustomReportsFields:               customReportsFields,
		CustomReportsIncludeDefaultFields: customReportsIncludeDefaultFields,
		StartDate:                         startDate,
	}
	secretID := new(string)
	if !r.SecretID.IsUnknown() && !r.SecretID.IsNull() {
		*secretID = r.SecretID.ValueString()
	} else {
		secretID = nil
	}
	out := shared.SourceBambooHrCreateRequest{
		Name:          name,
		DefinitionID:  definitionID,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
		SecretID:      secretID,
	}
	return &out
}

func (r *SourceBambooHrResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
	if resp != nil {
		r.CreatedAt = types.Int64Value(resp.CreatedAt)
		r.DefinitionID = types.StringValue(resp.DefinitionID)
		r.Name = types.StringValue(resp.Name)
		r.SourceID = types.StringValue(resp.SourceID)
		r.SourceType = types.StringValue(resp.SourceType)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *SourceBambooHrResourceModel) ToSharedSourceBambooHrPutRequest() *shared.SourceBambooHrPutRequest {
	var name string
	name = r.Name.ValueString()

	var workspaceID string
	workspaceID = r.WorkspaceID.ValueString()

	var apiKey string
	apiKey = r.Configuration.APIKey.ValueString()

	var subdomain string
	subdomain = r.Configuration.Subdomain.ValueString()

	customReportsFields := new(string)
	if !r.Configuration.CustomReportsFields.IsUnknown() && !r.Configuration.CustomReportsFields.IsNull() {
		*customReportsFields = r.Configuration.CustomReportsFields.ValueString()
	} else {
		customReportsFields = nil
	}
	customReportsIncludeDefaultFields := new(bool)
	if !r.Configuration.CustomReportsIncludeDefaultFields.IsUnknown() && !r.Configuration.CustomReportsIncludeDefaultFields.IsNull() {
		*customReportsIncludeDefaultFields = r.Configuration.CustomReportsIncludeDefaultFields.ValueBool()
	} else {
		customReportsIncludeDefaultFields = nil
	}
	startDate := new(time.Time)
	if !r.Configuration.StartDate.IsUnknown() && !r.Configuration.StartDate.IsNull() {
		*startDate, _ = time.Parse(time.RFC3339Nano, r.Configuration.StartDate.ValueString())
	} else {
		startDate = nil
	}
	configuration := shared.SourceBambooHrUpdate{
		APIKey:                            apiKey,
		Subdomain:                         subdomain,
		CustomReportsFields:               customReportsFields,
		CustomReportsIncludeDefaultFields: customReportsIncludeDefaultFields,
		StartDate:                         startDate,
	}
	out := shared.SourceBambooHrPutRequest{
		Name:          name,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
	}
	return &out
}
