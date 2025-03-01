// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package provider

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

func (r *SourceZohoExpenseResourceModel) ToSharedSourceZohoExpenseCreateRequest() *shared.SourceZohoExpenseCreateRequest {
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

	dataCenter := new(shared.SourceZohoExpenseDataCenter)
	if !r.Configuration.DataCenter.IsUnknown() && !r.Configuration.DataCenter.IsNull() {
		*dataCenter = shared.SourceZohoExpenseDataCenter(r.Configuration.DataCenter.ValueString())
	} else {
		dataCenter = nil
	}
	var clientID string
	clientID = r.Configuration.ClientID.ValueString()

	var clientSecret string
	clientSecret = r.Configuration.ClientSecret.ValueString()

	var refreshToken string
	refreshToken = r.Configuration.RefreshToken.ValueString()

	configuration := shared.SourceZohoExpense{
		DataCenter:   dataCenter,
		ClientID:     clientID,
		ClientSecret: clientSecret,
		RefreshToken: refreshToken,
	}
	secretID := new(string)
	if !r.SecretID.IsUnknown() && !r.SecretID.IsNull() {
		*secretID = r.SecretID.ValueString()
	} else {
		secretID = nil
	}
	out := shared.SourceZohoExpenseCreateRequest{
		Name:          name,
		DefinitionID:  definitionID,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
		SecretID:      secretID,
	}
	return &out
}

func (r *SourceZohoExpenseResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
	if resp != nil {
		r.CreatedAt = types.Int64Value(resp.CreatedAt)
		r.DefinitionID = types.StringValue(resp.DefinitionID)
		r.Name = types.StringValue(resp.Name)
		r.SourceID = types.StringValue(resp.SourceID)
		r.SourceType = types.StringValue(resp.SourceType)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *SourceZohoExpenseResourceModel) ToSharedSourceZohoExpensePutRequest() *shared.SourceZohoExpensePutRequest {
	var name string
	name = r.Name.ValueString()

	var workspaceID string
	workspaceID = r.WorkspaceID.ValueString()

	dataCenter := new(shared.SourceZohoExpenseUpdateDataCenter)
	if !r.Configuration.DataCenter.IsUnknown() && !r.Configuration.DataCenter.IsNull() {
		*dataCenter = shared.SourceZohoExpenseUpdateDataCenter(r.Configuration.DataCenter.ValueString())
	} else {
		dataCenter = nil
	}
	var clientID string
	clientID = r.Configuration.ClientID.ValueString()

	var clientSecret string
	clientSecret = r.Configuration.ClientSecret.ValueString()

	var refreshToken string
	refreshToken = r.Configuration.RefreshToken.ValueString()

	configuration := shared.SourceZohoExpenseUpdate{
		DataCenter:   dataCenter,
		ClientID:     clientID,
		ClientSecret: clientSecret,
		RefreshToken: refreshToken,
	}
	out := shared.SourceZohoExpensePutRequest{
		Name:          name,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
	}
	return &out
}
