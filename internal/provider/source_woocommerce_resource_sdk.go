// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package provider

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	customTypes "github.com/airbytehq/terraform-provider-airbyte/internal/sdk/types"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

func (r *SourceWoocommerceResourceModel) ToSharedSourceWoocommerceCreateRequest() *shared.SourceWoocommerceCreateRequest {
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

	var apiSecret string
	apiSecret = r.Configuration.APISecret.ValueString()

	var shop string
	shop = r.Configuration.Shop.ValueString()

	startDate := customTypes.MustDateFromString(r.Configuration.StartDate.ValueString())
	configuration := shared.SourceWoocommerce{
		APIKey:    apiKey,
		APISecret: apiSecret,
		Shop:      shop,
		StartDate: startDate,
	}
	secretID := new(string)
	if !r.SecretID.IsUnknown() && !r.SecretID.IsNull() {
		*secretID = r.SecretID.ValueString()
	} else {
		secretID = nil
	}
	out := shared.SourceWoocommerceCreateRequest{
		Name:          name,
		DefinitionID:  definitionID,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
		SecretID:      secretID,
	}
	return &out
}

func (r *SourceWoocommerceResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
	if resp != nil {
		r.CreatedAt = types.Int64Value(resp.CreatedAt)
		r.DefinitionID = types.StringValue(resp.DefinitionID)
		r.Name = types.StringValue(resp.Name)
		r.SourceID = types.StringValue(resp.SourceID)
		r.SourceType = types.StringValue(resp.SourceType)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *SourceWoocommerceResourceModel) ToSharedSourceWoocommercePutRequest() *shared.SourceWoocommercePutRequest {
	var name string
	name = r.Name.ValueString()

	var workspaceID string
	workspaceID = r.WorkspaceID.ValueString()

	var apiKey string
	apiKey = r.Configuration.APIKey.ValueString()

	var apiSecret string
	apiSecret = r.Configuration.APISecret.ValueString()

	var shop string
	shop = r.Configuration.Shop.ValueString()

	startDate := customTypes.MustDateFromString(r.Configuration.StartDate.ValueString())
	configuration := shared.SourceWoocommerceUpdate{
		APIKey:    apiKey,
		APISecret: apiSecret,
		Shop:      shop,
		StartDate: startDate,
	}
	out := shared.SourceWoocommercePutRequest{
		Name:          name,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
	}
	return &out
}
