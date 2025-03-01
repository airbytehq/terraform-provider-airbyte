// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package provider

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	customTypes "github.com/airbytehq/terraform-provider-airbyte/internal/sdk/types"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

func (r *SourcePolygonStockAPIResourceModel) ToSharedSourcePolygonStockAPICreateRequest() *shared.SourcePolygonStockAPICreateRequest {
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

	sort := new(string)
	if !r.Configuration.Sort.IsUnknown() && !r.Configuration.Sort.IsNull() {
		*sort = r.Configuration.Sort.ValueString()
	} else {
		sort = nil
	}
	limit := new(int64)
	if !r.Configuration.Limit.IsUnknown() && !r.Configuration.Limit.IsNull() {
		*limit = r.Configuration.Limit.ValueInt64()
	} else {
		limit = nil
	}
	var apiKey string
	apiKey = r.Configuration.APIKey.ValueString()

	adjusted := new(string)
	if !r.Configuration.Adjusted.IsUnknown() && !r.Configuration.Adjusted.IsNull() {
		*adjusted = r.Configuration.Adjusted.ValueString()
	} else {
		adjusted = nil
	}
	endDate := customTypes.MustDateFromString(r.Configuration.EndDate.ValueString())
	var timespan string
	timespan = r.Configuration.Timespan.ValueString()

	var multiplier int64
	multiplier = r.Configuration.Multiplier.ValueInt64()

	startDate := customTypes.MustDateFromString(r.Configuration.StartDate.ValueString())
	var stocksTicker string
	stocksTicker = r.Configuration.StocksTicker.ValueString()

	configuration := shared.SourcePolygonStockAPI{
		Sort:         sort,
		Limit:        limit,
		APIKey:       apiKey,
		Adjusted:     adjusted,
		EndDate:      endDate,
		Timespan:     timespan,
		Multiplier:   multiplier,
		StartDate:    startDate,
		StocksTicker: stocksTicker,
	}
	secretID := new(string)
	if !r.SecretID.IsUnknown() && !r.SecretID.IsNull() {
		*secretID = r.SecretID.ValueString()
	} else {
		secretID = nil
	}
	out := shared.SourcePolygonStockAPICreateRequest{
		Name:          name,
		DefinitionID:  definitionID,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
		SecretID:      secretID,
	}
	return &out
}

func (r *SourcePolygonStockAPIResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
	if resp != nil {
		r.CreatedAt = types.Int64Value(resp.CreatedAt)
		r.DefinitionID = types.StringValue(resp.DefinitionID)
		r.Name = types.StringValue(resp.Name)
		r.SourceID = types.StringValue(resp.SourceID)
		r.SourceType = types.StringValue(resp.SourceType)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *SourcePolygonStockAPIResourceModel) ToSharedSourcePolygonStockAPIPutRequest() *shared.SourcePolygonStockAPIPutRequest {
	var name string
	name = r.Name.ValueString()

	var workspaceID string
	workspaceID = r.WorkspaceID.ValueString()

	sort := new(string)
	if !r.Configuration.Sort.IsUnknown() && !r.Configuration.Sort.IsNull() {
		*sort = r.Configuration.Sort.ValueString()
	} else {
		sort = nil
	}
	limit := new(int64)
	if !r.Configuration.Limit.IsUnknown() && !r.Configuration.Limit.IsNull() {
		*limit = r.Configuration.Limit.ValueInt64()
	} else {
		limit = nil
	}
	var apiKey string
	apiKey = r.Configuration.APIKey.ValueString()

	adjusted := new(string)
	if !r.Configuration.Adjusted.IsUnknown() && !r.Configuration.Adjusted.IsNull() {
		*adjusted = r.Configuration.Adjusted.ValueString()
	} else {
		adjusted = nil
	}
	endDate := customTypes.MustDateFromString(r.Configuration.EndDate.ValueString())
	var timespan string
	timespan = r.Configuration.Timespan.ValueString()

	var multiplier int64
	multiplier = r.Configuration.Multiplier.ValueInt64()

	startDate := customTypes.MustDateFromString(r.Configuration.StartDate.ValueString())
	var stocksTicker string
	stocksTicker = r.Configuration.StocksTicker.ValueString()

	configuration := shared.SourcePolygonStockAPIUpdate{
		Sort:         sort,
		Limit:        limit,
		APIKey:       apiKey,
		Adjusted:     adjusted,
		EndDate:      endDate,
		Timespan:     timespan,
		Multiplier:   multiplier,
		StartDate:    startDate,
		StocksTicker: stocksTicker,
	}
	out := shared.SourcePolygonStockAPIPutRequest{
		Name:          name,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
	}
	return &out
}
