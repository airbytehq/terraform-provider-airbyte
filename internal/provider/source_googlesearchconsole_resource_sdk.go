// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package provider

import (
	tfTypes "github.com/airbytehq/terraform-provider-airbyte/internal/provider/types"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	customTypes "github.com/airbytehq/terraform-provider-airbyte/internal/sdk/types"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

func (r *SourceGoogleSearchConsoleResourceModel) ToSharedSourceGoogleSearchConsoleCreateRequest() *shared.SourceGoogleSearchConsoleCreateRequest {
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

	alwaysUseAggregationTypeAuto := new(bool)
	if !r.Configuration.AlwaysUseAggregationTypeAuto.IsUnknown() && !r.Configuration.AlwaysUseAggregationTypeAuto.IsNull() {
		*alwaysUseAggregationTypeAuto = r.Configuration.AlwaysUseAggregationTypeAuto.ValueBool()
	} else {
		alwaysUseAggregationTypeAuto = nil
	}
	var authorization shared.SourceGoogleSearchConsoleAuthenticationType
	var sourceGoogleSearchConsoleOAuth *shared.SourceGoogleSearchConsoleOAuth
	if r.Configuration.Authorization.OAuth != nil {
		accessToken := new(string)
		if !r.Configuration.Authorization.OAuth.AccessToken.IsUnknown() && !r.Configuration.Authorization.OAuth.AccessToken.IsNull() {
			*accessToken = r.Configuration.Authorization.OAuth.AccessToken.ValueString()
		} else {
			accessToken = nil
		}
		var clientID string
		clientID = r.Configuration.Authorization.OAuth.ClientID.ValueString()

		var clientSecret string
		clientSecret = r.Configuration.Authorization.OAuth.ClientSecret.ValueString()

		var refreshToken string
		refreshToken = r.Configuration.Authorization.OAuth.RefreshToken.ValueString()

		sourceGoogleSearchConsoleOAuth = &shared.SourceGoogleSearchConsoleOAuth{
			AccessToken:  accessToken,
			ClientID:     clientID,
			ClientSecret: clientSecret,
			RefreshToken: refreshToken,
		}
	}
	if sourceGoogleSearchConsoleOAuth != nil {
		authorization = shared.SourceGoogleSearchConsoleAuthenticationType{
			SourceGoogleSearchConsoleOAuth: sourceGoogleSearchConsoleOAuth,
		}
	}
	var sourceGoogleSearchConsoleServiceAccountKeyAuthentication *shared.SourceGoogleSearchConsoleServiceAccountKeyAuthentication
	if r.Configuration.Authorization.ServiceAccountKeyAuthentication != nil {
		var email string
		email = r.Configuration.Authorization.ServiceAccountKeyAuthentication.Email.ValueString()

		var serviceAccountInfo string
		serviceAccountInfo = r.Configuration.Authorization.ServiceAccountKeyAuthentication.ServiceAccountInfo.ValueString()

		sourceGoogleSearchConsoleServiceAccountKeyAuthentication = &shared.SourceGoogleSearchConsoleServiceAccountKeyAuthentication{
			Email:              email,
			ServiceAccountInfo: serviceAccountInfo,
		}
	}
	if sourceGoogleSearchConsoleServiceAccountKeyAuthentication != nil {
		authorization = shared.SourceGoogleSearchConsoleAuthenticationType{
			SourceGoogleSearchConsoleServiceAccountKeyAuthentication: sourceGoogleSearchConsoleServiceAccountKeyAuthentication,
		}
	}
	var customReportsArray []shared.SourceGoogleSearchConsoleCustomReportConfig = []shared.SourceGoogleSearchConsoleCustomReportConfig{}
	for _, customReportsArrayItem := range r.Configuration.CustomReportsArray {
		var dimensions []shared.SourceGoogleSearchConsoleValidEnums = []shared.SourceGoogleSearchConsoleValidEnums{}
		for _, dimensionsItem := range customReportsArrayItem.Dimensions {
			dimensions = append(dimensions, shared.SourceGoogleSearchConsoleValidEnums(dimensionsItem.ValueString()))
		}
		var name1 string
		name1 = customReportsArrayItem.Name.ValueString()

		customReportsArray = append(customReportsArray, shared.SourceGoogleSearchConsoleCustomReportConfig{
			Dimensions: dimensions,
			Name:       name1,
		})
	}
	dataState := new(shared.DataFreshness)
	if !r.Configuration.DataState.IsUnknown() && !r.Configuration.DataState.IsNull() {
		*dataState = shared.DataFreshness(r.Configuration.DataState.ValueString())
	} else {
		dataState = nil
	}
	endDate := new(customTypes.Date)
	if !r.Configuration.EndDate.IsUnknown() && !r.Configuration.EndDate.IsNull() {
		endDate = customTypes.MustNewDateFromString(r.Configuration.EndDate.ValueString())
	} else {
		endDate = nil
	}
	numWorkers := new(int64)
	if !r.Configuration.NumWorkers.IsUnknown() && !r.Configuration.NumWorkers.IsNull() {
		*numWorkers = r.Configuration.NumWorkers.ValueInt64()
	} else {
		numWorkers = nil
	}
	var siteUrls []string = []string{}
	for _, siteUrlsItem := range r.Configuration.SiteUrls {
		siteUrls = append(siteUrls, siteUrlsItem.ValueString())
	}
	startDate := new(customTypes.Date)
	if !r.Configuration.StartDate.IsUnknown() && !r.Configuration.StartDate.IsNull() {
		startDate = customTypes.MustNewDateFromString(r.Configuration.StartDate.ValueString())
	} else {
		startDate = nil
	}
	configuration := shared.SourceGoogleSearchConsole{
		AlwaysUseAggregationTypeAuto: alwaysUseAggregationTypeAuto,
		Authorization:                authorization,
		CustomReportsArray:           customReportsArray,
		DataState:                    dataState,
		EndDate:                      endDate,
		NumWorkers:                   numWorkers,
		SiteUrls:                     siteUrls,
		StartDate:                    startDate,
	}
	secretID := new(string)
	if !r.SecretID.IsUnknown() && !r.SecretID.IsNull() {
		*secretID = r.SecretID.ValueString()
	} else {
		secretID = nil
	}
	out := shared.SourceGoogleSearchConsoleCreateRequest{
		Name:          name,
		DefinitionID:  definitionID,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
		SecretID:      secretID,
	}
	return &out
}

func (r *SourceGoogleSearchConsoleResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
	if resp != nil {
		r.CreatedAt = types.Int64Value(resp.CreatedAt)
		r.DefinitionID = types.StringValue(resp.DefinitionID)
		r.Name = types.StringValue(resp.Name)
		if resp.ResourceAllocation == nil {
			r.ResourceAllocation = nil
		} else {
			r.ResourceAllocation = &tfTypes.ScopedResourceRequirements{}
			if resp.ResourceAllocation.Default == nil {
				r.ResourceAllocation.Default = nil
			} else {
				r.ResourceAllocation.Default = &tfTypes.ResourceRequirements{}
				r.ResourceAllocation.Default.CPULimit = types.StringPointerValue(resp.ResourceAllocation.Default.CPULimit)
				r.ResourceAllocation.Default.CPURequest = types.StringPointerValue(resp.ResourceAllocation.Default.CPURequest)
				r.ResourceAllocation.Default.EphemeralStorageLimit = types.StringPointerValue(resp.ResourceAllocation.Default.EphemeralStorageLimit)
				r.ResourceAllocation.Default.EphemeralStorageRequest = types.StringPointerValue(resp.ResourceAllocation.Default.EphemeralStorageRequest)
				r.ResourceAllocation.Default.MemoryLimit = types.StringPointerValue(resp.ResourceAllocation.Default.MemoryLimit)
				r.ResourceAllocation.Default.MemoryRequest = types.StringPointerValue(resp.ResourceAllocation.Default.MemoryRequest)
			}
			r.ResourceAllocation.JobSpecific = []tfTypes.JobTypeResourceLimit{}
			if len(r.ResourceAllocation.JobSpecific) > len(resp.ResourceAllocation.JobSpecific) {
				r.ResourceAllocation.JobSpecific = r.ResourceAllocation.JobSpecific[:len(resp.ResourceAllocation.JobSpecific)]
			}
			for jobSpecificCount, jobSpecificItem := range resp.ResourceAllocation.JobSpecific {
				var jobSpecific1 tfTypes.JobTypeResourceLimit
				jobSpecific1.JobType = types.StringValue(string(jobSpecificItem.JobType))
				jobSpecific1.ResourceRequirements.CPULimit = types.StringPointerValue(jobSpecificItem.ResourceRequirements.CPULimit)
				jobSpecific1.ResourceRequirements.CPURequest = types.StringPointerValue(jobSpecificItem.ResourceRequirements.CPURequest)
				jobSpecific1.ResourceRequirements.EphemeralStorageLimit = types.StringPointerValue(jobSpecificItem.ResourceRequirements.EphemeralStorageLimit)
				jobSpecific1.ResourceRequirements.EphemeralStorageRequest = types.StringPointerValue(jobSpecificItem.ResourceRequirements.EphemeralStorageRequest)
				jobSpecific1.ResourceRequirements.MemoryLimit = types.StringPointerValue(jobSpecificItem.ResourceRequirements.MemoryLimit)
				jobSpecific1.ResourceRequirements.MemoryRequest = types.StringPointerValue(jobSpecificItem.ResourceRequirements.MemoryRequest)
				if jobSpecificCount+1 > len(r.ResourceAllocation.JobSpecific) {
					r.ResourceAllocation.JobSpecific = append(r.ResourceAllocation.JobSpecific, jobSpecific1)
				} else {
					r.ResourceAllocation.JobSpecific[jobSpecificCount].JobType = jobSpecific1.JobType
					r.ResourceAllocation.JobSpecific[jobSpecificCount].ResourceRequirements = jobSpecific1.ResourceRequirements
				}
			}
		}
		r.SourceID = types.StringValue(resp.SourceID)
		r.SourceType = types.StringValue(resp.SourceType)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *SourceGoogleSearchConsoleResourceModel) ToSharedSourceGoogleSearchConsolePutRequest() *shared.SourceGoogleSearchConsolePutRequest {
	var name string
	name = r.Name.ValueString()

	var workspaceID string
	workspaceID = r.WorkspaceID.ValueString()

	alwaysUseAggregationTypeAuto := new(bool)
	if !r.Configuration.AlwaysUseAggregationTypeAuto.IsUnknown() && !r.Configuration.AlwaysUseAggregationTypeAuto.IsNull() {
		*alwaysUseAggregationTypeAuto = r.Configuration.AlwaysUseAggregationTypeAuto.ValueBool()
	} else {
		alwaysUseAggregationTypeAuto = nil
	}
	var authorization shared.SourceGoogleSearchConsoleUpdateAuthenticationType
	var sourceGoogleSearchConsoleUpdateOAuth *shared.SourceGoogleSearchConsoleUpdateOAuth
	if r.Configuration.Authorization.OAuth != nil {
		accessToken := new(string)
		if !r.Configuration.Authorization.OAuth.AccessToken.IsUnknown() && !r.Configuration.Authorization.OAuth.AccessToken.IsNull() {
			*accessToken = r.Configuration.Authorization.OAuth.AccessToken.ValueString()
		} else {
			accessToken = nil
		}
		var clientID string
		clientID = r.Configuration.Authorization.OAuth.ClientID.ValueString()

		var clientSecret string
		clientSecret = r.Configuration.Authorization.OAuth.ClientSecret.ValueString()

		var refreshToken string
		refreshToken = r.Configuration.Authorization.OAuth.RefreshToken.ValueString()

		sourceGoogleSearchConsoleUpdateOAuth = &shared.SourceGoogleSearchConsoleUpdateOAuth{
			AccessToken:  accessToken,
			ClientID:     clientID,
			ClientSecret: clientSecret,
			RefreshToken: refreshToken,
		}
	}
	if sourceGoogleSearchConsoleUpdateOAuth != nil {
		authorization = shared.SourceGoogleSearchConsoleUpdateAuthenticationType{
			SourceGoogleSearchConsoleUpdateOAuth: sourceGoogleSearchConsoleUpdateOAuth,
		}
	}
	var sourceGoogleSearchConsoleUpdateServiceAccountKeyAuthentication *shared.SourceGoogleSearchConsoleUpdateServiceAccountKeyAuthentication
	if r.Configuration.Authorization.ServiceAccountKeyAuthentication != nil {
		var email string
		email = r.Configuration.Authorization.ServiceAccountKeyAuthentication.Email.ValueString()

		var serviceAccountInfo string
		serviceAccountInfo = r.Configuration.Authorization.ServiceAccountKeyAuthentication.ServiceAccountInfo.ValueString()

		sourceGoogleSearchConsoleUpdateServiceAccountKeyAuthentication = &shared.SourceGoogleSearchConsoleUpdateServiceAccountKeyAuthentication{
			Email:              email,
			ServiceAccountInfo: serviceAccountInfo,
		}
	}
	if sourceGoogleSearchConsoleUpdateServiceAccountKeyAuthentication != nil {
		authorization = shared.SourceGoogleSearchConsoleUpdateAuthenticationType{
			SourceGoogleSearchConsoleUpdateServiceAccountKeyAuthentication: sourceGoogleSearchConsoleUpdateServiceAccountKeyAuthentication,
		}
	}
	var customReportsArray []shared.SourceGoogleSearchConsoleUpdateCustomReportConfig = []shared.SourceGoogleSearchConsoleUpdateCustomReportConfig{}
	for _, customReportsArrayItem := range r.Configuration.CustomReportsArray {
		var dimensions []shared.SourceGoogleSearchConsoleUpdateValidEnums = []shared.SourceGoogleSearchConsoleUpdateValidEnums{}
		for _, dimensionsItem := range customReportsArrayItem.Dimensions {
			dimensions = append(dimensions, shared.SourceGoogleSearchConsoleUpdateValidEnums(dimensionsItem.ValueString()))
		}
		var name1 string
		name1 = customReportsArrayItem.Name.ValueString()

		customReportsArray = append(customReportsArray, shared.SourceGoogleSearchConsoleUpdateCustomReportConfig{
			Dimensions: dimensions,
			Name:       name1,
		})
	}
	dataState := new(shared.SourceGoogleSearchConsoleUpdateDataFreshness)
	if !r.Configuration.DataState.IsUnknown() && !r.Configuration.DataState.IsNull() {
		*dataState = shared.SourceGoogleSearchConsoleUpdateDataFreshness(r.Configuration.DataState.ValueString())
	} else {
		dataState = nil
	}
	endDate := new(customTypes.Date)
	if !r.Configuration.EndDate.IsUnknown() && !r.Configuration.EndDate.IsNull() {
		endDate = customTypes.MustNewDateFromString(r.Configuration.EndDate.ValueString())
	} else {
		endDate = nil
	}
	numWorkers := new(int64)
	if !r.Configuration.NumWorkers.IsUnknown() && !r.Configuration.NumWorkers.IsNull() {
		*numWorkers = r.Configuration.NumWorkers.ValueInt64()
	} else {
		numWorkers = nil
	}
	var siteUrls []string = []string{}
	for _, siteUrlsItem := range r.Configuration.SiteUrls {
		siteUrls = append(siteUrls, siteUrlsItem.ValueString())
	}
	startDate := new(customTypes.Date)
	if !r.Configuration.StartDate.IsUnknown() && !r.Configuration.StartDate.IsNull() {
		startDate = customTypes.MustNewDateFromString(r.Configuration.StartDate.ValueString())
	} else {
		startDate = nil
	}
	configuration := shared.SourceGoogleSearchConsoleUpdate{
		AlwaysUseAggregationTypeAuto: alwaysUseAggregationTypeAuto,
		Authorization:                authorization,
		CustomReportsArray:           customReportsArray,
		DataState:                    dataState,
		EndDate:                      endDate,
		NumWorkers:                   numWorkers,
		SiteUrls:                     siteUrls,
		StartDate:                    startDate,
	}
	out := shared.SourceGoogleSearchConsolePutRequest{
		Name:          name,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
	}
	return &out
}
