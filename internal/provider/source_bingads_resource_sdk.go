// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package provider

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	customTypes "github.com/airbytehq/terraform-provider-airbyte/internal/sdk/types"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

func (r *SourceBingAdsResourceModel) ToSharedSourceBingAdsCreateRequest() *shared.SourceBingAdsCreateRequest {
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

	tenantID := new(string)
	if !r.Configuration.TenantID.IsUnknown() && !r.Configuration.TenantID.IsNull() {
		*tenantID = r.Configuration.TenantID.ValueString()
	} else {
		tenantID = nil
	}
	var clientID string
	clientID = r.Configuration.ClientID.ValueString()

	clientSecret := new(string)
	if !r.Configuration.ClientSecret.IsUnknown() && !r.Configuration.ClientSecret.IsNull() {
		*clientSecret = r.Configuration.ClientSecret.ValueString()
	} else {
		clientSecret = nil
	}
	var refreshToken string
	refreshToken = r.Configuration.RefreshToken.ValueString()

	var developerToken string
	developerToken = r.Configuration.DeveloperToken.ValueString()

	var accountNames []shared.AccountNames = []shared.AccountNames{}
	for _, accountNamesItem := range r.Configuration.AccountNames {
		operator := shared.Operator(accountNamesItem.Operator.ValueString())
		var name1 string
		name1 = accountNamesItem.Name.ValueString()

		accountNames = append(accountNames, shared.AccountNames{
			Operator: operator,
			Name:     name1,
		})
	}
	reportsStartDate := new(customTypes.Date)
	if !r.Configuration.ReportsStartDate.IsUnknown() && !r.Configuration.ReportsStartDate.IsNull() {
		reportsStartDate = customTypes.MustNewDateFromString(r.Configuration.ReportsStartDate.ValueString())
	} else {
		reportsStartDate = nil
	}
	lookbackWindow := new(int64)
	if !r.Configuration.LookbackWindow.IsUnknown() && !r.Configuration.LookbackWindow.IsNull() {
		*lookbackWindow = r.Configuration.LookbackWindow.ValueInt64()
	} else {
		lookbackWindow = nil
	}
	var customReports []shared.CustomReportConfig = []shared.CustomReportConfig{}
	for _, customReportsItem := range r.Configuration.CustomReports {
		var name2 string
		name2 = customReportsItem.Name.ValueString()

		reportingObject := shared.ReportingDataObject(customReportsItem.ReportingObject.ValueString())
		var reportColumns []string = []string{}
		for _, reportColumnsItem := range customReportsItem.ReportColumns {
			reportColumns = append(reportColumns, reportColumnsItem.ValueString())
		}
		reportAggregation := new(string)
		if !customReportsItem.ReportAggregation.IsUnknown() && !customReportsItem.ReportAggregation.IsNull() {
			*reportAggregation = customReportsItem.ReportAggregation.ValueString()
		} else {
			reportAggregation = nil
		}
		customReports = append(customReports, shared.CustomReportConfig{
			Name:              name2,
			ReportingObject:   reportingObject,
			ReportColumns:     reportColumns,
			ReportAggregation: reportAggregation,
		})
	}
	configuration := shared.SourceBingAds{
		TenantID:         tenantID,
		ClientID:         clientID,
		ClientSecret:     clientSecret,
		RefreshToken:     refreshToken,
		DeveloperToken:   developerToken,
		AccountNames:     accountNames,
		ReportsStartDate: reportsStartDate,
		LookbackWindow:   lookbackWindow,
		CustomReports:    customReports,
	}
	secretID := new(string)
	if !r.SecretID.IsUnknown() && !r.SecretID.IsNull() {
		*secretID = r.SecretID.ValueString()
	} else {
		secretID = nil
	}
	out := shared.SourceBingAdsCreateRequest{
		Name:          name,
		DefinitionID:  definitionID,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
		SecretID:      secretID,
	}
	return &out
}

func (r *SourceBingAdsResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
	if resp != nil {
		r.CreatedAt = types.Int64Value(resp.CreatedAt)
		r.DefinitionID = types.StringValue(resp.DefinitionID)
		r.Name = types.StringValue(resp.Name)
		r.SourceID = types.StringValue(resp.SourceID)
		r.SourceType = types.StringValue(resp.SourceType)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *SourceBingAdsResourceModel) ToSharedSourceBingAdsPutRequest() *shared.SourceBingAdsPutRequest {
	var name string
	name = r.Name.ValueString()

	var workspaceID string
	workspaceID = r.WorkspaceID.ValueString()

	tenantID := new(string)
	if !r.Configuration.TenantID.IsUnknown() && !r.Configuration.TenantID.IsNull() {
		*tenantID = r.Configuration.TenantID.ValueString()
	} else {
		tenantID = nil
	}
	var clientID string
	clientID = r.Configuration.ClientID.ValueString()

	clientSecret := new(string)
	if !r.Configuration.ClientSecret.IsUnknown() && !r.Configuration.ClientSecret.IsNull() {
		*clientSecret = r.Configuration.ClientSecret.ValueString()
	} else {
		clientSecret = nil
	}
	var refreshToken string
	refreshToken = r.Configuration.RefreshToken.ValueString()

	var developerToken string
	developerToken = r.Configuration.DeveloperToken.ValueString()

	var accountNames []shared.SourceBingAdsUpdateAccountNames = []shared.SourceBingAdsUpdateAccountNames{}
	for _, accountNamesItem := range r.Configuration.AccountNames {
		operator := shared.SourceBingAdsUpdateOperator(accountNamesItem.Operator.ValueString())
		var name1 string
		name1 = accountNamesItem.Name.ValueString()

		accountNames = append(accountNames, shared.SourceBingAdsUpdateAccountNames{
			Operator: operator,
			Name:     name1,
		})
	}
	reportsStartDate := new(customTypes.Date)
	if !r.Configuration.ReportsStartDate.IsUnknown() && !r.Configuration.ReportsStartDate.IsNull() {
		reportsStartDate = customTypes.MustNewDateFromString(r.Configuration.ReportsStartDate.ValueString())
	} else {
		reportsStartDate = nil
	}
	lookbackWindow := new(int64)
	if !r.Configuration.LookbackWindow.IsUnknown() && !r.Configuration.LookbackWindow.IsNull() {
		*lookbackWindow = r.Configuration.LookbackWindow.ValueInt64()
	} else {
		lookbackWindow = nil
	}
	var customReports []shared.SourceBingAdsUpdateCustomReportConfig = []shared.SourceBingAdsUpdateCustomReportConfig{}
	for _, customReportsItem := range r.Configuration.CustomReports {
		var name2 string
		name2 = customReportsItem.Name.ValueString()

		reportingObject := shared.SourceBingAdsUpdateReportingDataObject(customReportsItem.ReportingObject.ValueString())
		var reportColumns []string = []string{}
		for _, reportColumnsItem := range customReportsItem.ReportColumns {
			reportColumns = append(reportColumns, reportColumnsItem.ValueString())
		}
		reportAggregation := new(string)
		if !customReportsItem.ReportAggregation.IsUnknown() && !customReportsItem.ReportAggregation.IsNull() {
			*reportAggregation = customReportsItem.ReportAggregation.ValueString()
		} else {
			reportAggregation = nil
		}
		customReports = append(customReports, shared.SourceBingAdsUpdateCustomReportConfig{
			Name:              name2,
			ReportingObject:   reportingObject,
			ReportColumns:     reportColumns,
			ReportAggregation: reportAggregation,
		})
	}
	configuration := shared.SourceBingAdsUpdate{
		TenantID:         tenantID,
		ClientID:         clientID,
		ClientSecret:     clientSecret,
		RefreshToken:     refreshToken,
		DeveloperToken:   developerToken,
		AccountNames:     accountNames,
		ReportsStartDate: reportsStartDate,
		LookbackWindow:   lookbackWindow,
		CustomReports:    customReports,
	}
	out := shared.SourceBingAdsPutRequest{
		Name:          name,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
	}
	return &out
}
