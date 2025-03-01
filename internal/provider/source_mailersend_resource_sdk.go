// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package provider

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

func (r *SourceMailersendResourceModel) ToSharedSourceMailersendCreateRequest() *shared.SourceMailersendCreateRequest {
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

	var apiToken string
	apiToken = r.Configuration.APIToken.ValueString()

	var domainID string
	domainID = r.Configuration.DomainID.ValueString()

	startDate := new(float64)
	if !r.Configuration.StartDate.IsUnknown() && !r.Configuration.StartDate.IsNull() {
		*startDate, _ = r.Configuration.StartDate.ValueBigFloat().Float64()
	} else {
		startDate = nil
	}
	configuration := shared.SourceMailersend{
		APIToken:  apiToken,
		DomainID:  domainID,
		StartDate: startDate,
	}
	secretID := new(string)
	if !r.SecretID.IsUnknown() && !r.SecretID.IsNull() {
		*secretID = r.SecretID.ValueString()
	} else {
		secretID = nil
	}
	out := shared.SourceMailersendCreateRequest{
		Name:          name,
		DefinitionID:  definitionID,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
		SecretID:      secretID,
	}
	return &out
}

func (r *SourceMailersendResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
	if resp != nil {
		r.CreatedAt = types.Int64Value(resp.CreatedAt)
		r.DefinitionID = types.StringValue(resp.DefinitionID)
		r.Name = types.StringValue(resp.Name)
		r.SourceID = types.StringValue(resp.SourceID)
		r.SourceType = types.StringValue(resp.SourceType)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *SourceMailersendResourceModel) ToSharedSourceMailersendPutRequest() *shared.SourceMailersendPutRequest {
	var name string
	name = r.Name.ValueString()

	var workspaceID string
	workspaceID = r.WorkspaceID.ValueString()

	var apiToken string
	apiToken = r.Configuration.APIToken.ValueString()

	var domainID string
	domainID = r.Configuration.DomainID.ValueString()

	startDate := new(float64)
	if !r.Configuration.StartDate.IsUnknown() && !r.Configuration.StartDate.IsNull() {
		*startDate, _ = r.Configuration.StartDate.ValueBigFloat().Float64()
	} else {
		startDate = nil
	}
	configuration := shared.SourceMailersendUpdate{
		APIToken:  apiToken,
		DomainID:  domainID,
		StartDate: startDate,
	}
	out := shared.SourceMailersendPutRequest{
		Name:          name,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
	}
	return &out
}
