// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package provider

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

func (r *SourceGocardlessResourceModel) ToSharedSourceGocardlessCreateRequest() *shared.SourceGocardlessCreateRequest {
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

	gocardlessEnvironment := new(shared.GoCardlessAPIEnvironment)
	if !r.Configuration.GocardlessEnvironment.IsUnknown() && !r.Configuration.GocardlessEnvironment.IsNull() {
		*gocardlessEnvironment = shared.GoCardlessAPIEnvironment(r.Configuration.GocardlessEnvironment.ValueString())
	} else {
		gocardlessEnvironment = nil
	}
	var gocardlessVersion string
	gocardlessVersion = r.Configuration.GocardlessVersion.ValueString()

	var startDate string
	startDate = r.Configuration.StartDate.ValueString()

	configuration := shared.SourceGocardless{
		AccessToken:           accessToken,
		GocardlessEnvironment: gocardlessEnvironment,
		GocardlessVersion:     gocardlessVersion,
		StartDate:             startDate,
	}
	secretID := new(string)
	if !r.SecretID.IsUnknown() && !r.SecretID.IsNull() {
		*secretID = r.SecretID.ValueString()
	} else {
		secretID = nil
	}
	out := shared.SourceGocardlessCreateRequest{
		Name:          name,
		DefinitionID:  definitionID,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
		SecretID:      secretID,
	}
	return &out
}

func (r *SourceGocardlessResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
	if resp != nil {
		r.CreatedAt = types.Int64Value(resp.CreatedAt)
		r.DefinitionID = types.StringValue(resp.DefinitionID)
		r.Name = types.StringValue(resp.Name)
		r.SourceID = types.StringValue(resp.SourceID)
		r.SourceType = types.StringValue(resp.SourceType)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *SourceGocardlessResourceModel) ToSharedSourceGocardlessPutRequest() *shared.SourceGocardlessPutRequest {
	var name string
	name = r.Name.ValueString()

	var workspaceID string
	workspaceID = r.WorkspaceID.ValueString()

	var accessToken string
	accessToken = r.Configuration.AccessToken.ValueString()

	gocardlessEnvironment := new(shared.SourceGocardlessUpdateGoCardlessAPIEnvironment)
	if !r.Configuration.GocardlessEnvironment.IsUnknown() && !r.Configuration.GocardlessEnvironment.IsNull() {
		*gocardlessEnvironment = shared.SourceGocardlessUpdateGoCardlessAPIEnvironment(r.Configuration.GocardlessEnvironment.ValueString())
	} else {
		gocardlessEnvironment = nil
	}
	var gocardlessVersion string
	gocardlessVersion = r.Configuration.GocardlessVersion.ValueString()

	var startDate string
	startDate = r.Configuration.StartDate.ValueString()

	configuration := shared.SourceGocardlessUpdate{
		AccessToken:           accessToken,
		GocardlessEnvironment: gocardlessEnvironment,
		GocardlessVersion:     gocardlessVersion,
		StartDate:             startDate,
	}
	out := shared.SourceGocardlessPutRequest{
		Name:          name,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
	}
	return &out
}
