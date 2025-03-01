// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package provider

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	customTypes "github.com/airbytehq/terraform-provider-airbyte/internal/sdk/types"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

func (r *SourcePlaidResourceModel) ToSharedSourcePlaidCreateRequest() *shared.SourcePlaidCreateRequest {
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

	var apiKey string
	apiKey = r.Configuration.APIKey.ValueString()

	var clientID string
	clientID = r.Configuration.ClientID.ValueString()

	plaidEnv := shared.PlaidEnvironment(r.Configuration.PlaidEnv.ValueString())
	startDate := new(customTypes.Date)
	if !r.Configuration.StartDate.IsUnknown() && !r.Configuration.StartDate.IsNull() {
		startDate = customTypes.MustNewDateFromString(r.Configuration.StartDate.ValueString())
	} else {
		startDate = nil
	}
	configuration := shared.SourcePlaid{
		AccessToken: accessToken,
		APIKey:      apiKey,
		ClientID:    clientID,
		PlaidEnv:    plaidEnv,
		StartDate:   startDate,
	}
	secretID := new(string)
	if !r.SecretID.IsUnknown() && !r.SecretID.IsNull() {
		*secretID = r.SecretID.ValueString()
	} else {
		secretID = nil
	}
	out := shared.SourcePlaidCreateRequest{
		Name:          name,
		DefinitionID:  definitionID,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
		SecretID:      secretID,
	}
	return &out
}

func (r *SourcePlaidResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
	if resp != nil {
		r.CreatedAt = types.Int64Value(resp.CreatedAt)
		r.DefinitionID = types.StringValue(resp.DefinitionID)
		r.Name = types.StringValue(resp.Name)
		r.SourceID = types.StringValue(resp.SourceID)
		r.SourceType = types.StringValue(resp.SourceType)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *SourcePlaidResourceModel) ToSharedSourcePlaidPutRequest() *shared.SourcePlaidPutRequest {
	var name string
	name = r.Name.ValueString()

	var workspaceID string
	workspaceID = r.WorkspaceID.ValueString()

	var accessToken string
	accessToken = r.Configuration.AccessToken.ValueString()

	var apiKey string
	apiKey = r.Configuration.APIKey.ValueString()

	var clientID string
	clientID = r.Configuration.ClientID.ValueString()

	plaidEnv := shared.SourcePlaidUpdatePlaidEnvironment(r.Configuration.PlaidEnv.ValueString())
	startDate := new(customTypes.Date)
	if !r.Configuration.StartDate.IsUnknown() && !r.Configuration.StartDate.IsNull() {
		startDate = customTypes.MustNewDateFromString(r.Configuration.StartDate.ValueString())
	} else {
		startDate = nil
	}
	configuration := shared.SourcePlaidUpdate{
		AccessToken: accessToken,
		APIKey:      apiKey,
		ClientID:    clientID,
		PlaidEnv:    plaidEnv,
		StartDate:   startDate,
	}
	out := shared.SourcePlaidPutRequest{
		Name:          name,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
	}
	return &out
}
