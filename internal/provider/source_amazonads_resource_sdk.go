// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package provider

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	customTypes "github.com/airbytehq/terraform-provider-airbyte/internal/sdk/types"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

func (r *SourceAmazonAdsResourceModel) ToSharedSourceAmazonAdsCreateRequest() *shared.SourceAmazonAdsCreateRequest {
	clientID := r.Configuration.ClientID.ValueString()
	clientSecret := r.Configuration.ClientSecret.ValueString()
	lookBackWindow := new(int64)
	if !r.Configuration.LookBackWindow.IsUnknown() && !r.Configuration.LookBackWindow.IsNull() {
		*lookBackWindow = r.Configuration.LookBackWindow.ValueInt64()
	} else {
		lookBackWindow = nil
	}
	var marketplaceIds []string = []string{}
	for _, marketplaceIdsItem := range r.Configuration.MarketplaceIds {
		marketplaceIds = append(marketplaceIds, marketplaceIdsItem.ValueString())
	}
	var profiles []int64 = []int64{}
	for _, profilesItem := range r.Configuration.Profiles {
		profiles = append(profiles, profilesItem.ValueInt64())
	}
	refreshToken := r.Configuration.RefreshToken.ValueString()
	region := new(shared.SourceAmazonAdsRegion)
	if !r.Configuration.Region.IsUnknown() && !r.Configuration.Region.IsNull() {
		*region = shared.SourceAmazonAdsRegion(r.Configuration.Region.ValueString())
	} else {
		region = nil
	}
	var reportRecordTypes []shared.SourceAmazonAdsReportRecordTypes = []shared.SourceAmazonAdsReportRecordTypes{}
	for _, reportRecordTypesItem := range r.Configuration.ReportRecordTypes {
		reportRecordTypes = append(reportRecordTypes, shared.SourceAmazonAdsReportRecordTypes(reportRecordTypesItem.ValueString()))
	}
	startDate := new(customTypes.Date)
	if !r.Configuration.StartDate.IsUnknown() && !r.Configuration.StartDate.IsNull() {
		startDate = customTypes.MustNewDateFromString(r.Configuration.StartDate.ValueString())
	} else {
		startDate = nil
	}
	var stateFilter []shared.SourceAmazonAdsStateFilter = []shared.SourceAmazonAdsStateFilter{}
	for _, stateFilterItem := range r.Configuration.StateFilter {
		stateFilter = append(stateFilter, shared.SourceAmazonAdsStateFilter(stateFilterItem.ValueString()))
	}
	configuration := shared.SourceAmazonAds{
		ClientID:          clientID,
		ClientSecret:      clientSecret,
		LookBackWindow:    lookBackWindow,
		MarketplaceIds:    marketplaceIds,
		Profiles:          profiles,
		RefreshToken:      refreshToken,
		Region:            region,
		ReportRecordTypes: reportRecordTypes,
		StartDate:         startDate,
		StateFilter:       stateFilter,
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
	out := shared.SourceAmazonAdsCreateRequest{
		Configuration: configuration,
		DefinitionID:  definitionID,
		Name:          name,
		SecretID:      secretID,
		WorkspaceID:   workspaceID,
	}
	return &out
}

func (r *SourceAmazonAdsResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
	if resp != nil {
		r.Name = types.StringValue(resp.Name)
		r.SourceID = types.StringValue(resp.SourceID)
		r.SourceType = types.StringValue(resp.SourceType)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *SourceAmazonAdsResourceModel) ToSharedSourceAmazonAdsPutRequest() *shared.SourceAmazonAdsPutRequest {
	clientID := r.Configuration.ClientID.ValueString()
	clientSecret := r.Configuration.ClientSecret.ValueString()
	lookBackWindow := new(int64)
	if !r.Configuration.LookBackWindow.IsUnknown() && !r.Configuration.LookBackWindow.IsNull() {
		*lookBackWindow = r.Configuration.LookBackWindow.ValueInt64()
	} else {
		lookBackWindow = nil
	}
	var marketplaceIds []string = []string{}
	for _, marketplaceIdsItem := range r.Configuration.MarketplaceIds {
		marketplaceIds = append(marketplaceIds, marketplaceIdsItem.ValueString())
	}
	var profiles []int64 = []int64{}
	for _, profilesItem := range r.Configuration.Profiles {
		profiles = append(profiles, profilesItem.ValueInt64())
	}
	refreshToken := r.Configuration.RefreshToken.ValueString()
	region := new(shared.Region)
	if !r.Configuration.Region.IsUnknown() && !r.Configuration.Region.IsNull() {
		*region = shared.Region(r.Configuration.Region.ValueString())
	} else {
		region = nil
	}
	var reportRecordTypes []shared.ReportRecordTypes = []shared.ReportRecordTypes{}
	for _, reportRecordTypesItem := range r.Configuration.ReportRecordTypes {
		reportRecordTypes = append(reportRecordTypes, shared.ReportRecordTypes(reportRecordTypesItem.ValueString()))
	}
	startDate := new(customTypes.Date)
	if !r.Configuration.StartDate.IsUnknown() && !r.Configuration.StartDate.IsNull() {
		startDate = customTypes.MustNewDateFromString(r.Configuration.StartDate.ValueString())
	} else {
		startDate = nil
	}
	var stateFilter []shared.StateFilter = []shared.StateFilter{}
	for _, stateFilterItem := range r.Configuration.StateFilter {
		stateFilter = append(stateFilter, shared.StateFilter(stateFilterItem.ValueString()))
	}
	configuration := shared.SourceAmazonAdsUpdate{
		ClientID:          clientID,
		ClientSecret:      clientSecret,
		LookBackWindow:    lookBackWindow,
		MarketplaceIds:    marketplaceIds,
		Profiles:          profiles,
		RefreshToken:      refreshToken,
		Region:            region,
		ReportRecordTypes: reportRecordTypes,
		StartDate:         startDate,
		StateFilter:       stateFilter,
	}
	name := r.Name.ValueString()
	workspaceID := r.WorkspaceID.ValueString()
	out := shared.SourceAmazonAdsPutRequest{
		Configuration: configuration,
		Name:          name,
		WorkspaceID:   workspaceID,
	}
	return &out
}
