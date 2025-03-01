// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package provider

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

func (r *SourceZohoBiginResourceModel) ToSharedSourceZohoBiginCreateRequest() *shared.SourceZohoBiginCreateRequest {
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

	var clientID string
	clientID = r.Configuration.ClientID.ValueString()

	dataCenter := new(shared.SourceZohoBiginDataCenter)
	if !r.Configuration.DataCenter.IsUnknown() && !r.Configuration.DataCenter.IsNull() {
		*dataCenter = shared.SourceZohoBiginDataCenter(r.Configuration.DataCenter.ValueString())
	} else {
		dataCenter = nil
	}
	var clientSecret string
	clientSecret = r.Configuration.ClientSecret.ValueString()

	var clientRefreshToken string
	clientRefreshToken = r.Configuration.ClientRefreshToken.ValueString()

	var moduleName string
	moduleName = r.Configuration.ModuleName.ValueString()

	configuration := shared.SourceZohoBigin{
		ClientID:           clientID,
		DataCenter:         dataCenter,
		ClientSecret:       clientSecret,
		ClientRefreshToken: clientRefreshToken,
		ModuleName:         moduleName,
	}
	secretID := new(string)
	if !r.SecretID.IsUnknown() && !r.SecretID.IsNull() {
		*secretID = r.SecretID.ValueString()
	} else {
		secretID = nil
	}
	out := shared.SourceZohoBiginCreateRequest{
		Name:          name,
		DefinitionID:  definitionID,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
		SecretID:      secretID,
	}
	return &out
}

func (r *SourceZohoBiginResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
	if resp != nil {
		r.CreatedAt = types.Int64Value(resp.CreatedAt)
		r.DefinitionID = types.StringValue(resp.DefinitionID)
		r.Name = types.StringValue(resp.Name)
		r.SourceID = types.StringValue(resp.SourceID)
		r.SourceType = types.StringValue(resp.SourceType)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *SourceZohoBiginResourceModel) ToSharedSourceZohoBiginPutRequest() *shared.SourceZohoBiginPutRequest {
	var name string
	name = r.Name.ValueString()

	var workspaceID string
	workspaceID = r.WorkspaceID.ValueString()

	var clientID string
	clientID = r.Configuration.ClientID.ValueString()

	dataCenter := new(shared.SourceZohoBiginUpdateDataCenter)
	if !r.Configuration.DataCenter.IsUnknown() && !r.Configuration.DataCenter.IsNull() {
		*dataCenter = shared.SourceZohoBiginUpdateDataCenter(r.Configuration.DataCenter.ValueString())
	} else {
		dataCenter = nil
	}
	var clientSecret string
	clientSecret = r.Configuration.ClientSecret.ValueString()

	var clientRefreshToken string
	clientRefreshToken = r.Configuration.ClientRefreshToken.ValueString()

	var moduleName string
	moduleName = r.Configuration.ModuleName.ValueString()

	configuration := shared.SourceZohoBiginUpdate{
		ClientID:           clientID,
		DataCenter:         dataCenter,
		ClientSecret:       clientSecret,
		ClientRefreshToken: clientRefreshToken,
		ModuleName:         moduleName,
	}
	out := shared.SourceZohoBiginPutRequest{
		Name:          name,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
	}
	return &out
}
