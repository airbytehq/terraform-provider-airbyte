// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package provider

import (
	tfTypes "github.com/airbytehq/terraform-provider-airbyte/internal/provider/types"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

func (r *SourceGnewsResourceModel) ToSharedSourceGnewsCreateRequest() *shared.SourceGnewsCreateRequest {
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

	country := new(shared.SourceGnewsCountry)
	if !r.Configuration.Country.IsUnknown() && !r.Configuration.Country.IsNull() {
		*country = shared.SourceGnewsCountry(r.Configuration.Country.ValueString())
	} else {
		country = nil
	}
	endDate := new(string)
	if !r.Configuration.EndDate.IsUnknown() && !r.Configuration.EndDate.IsNull() {
		*endDate = r.Configuration.EndDate.ValueString()
	} else {
		endDate = nil
	}
	var in []shared.In = []shared.In{}
	for _, inItem := range r.Configuration.In {
		in = append(in, shared.In(inItem.ValueString()))
	}
	language := new(shared.SourceGnewsLanguage)
	if !r.Configuration.Language.IsUnknown() && !r.Configuration.Language.IsNull() {
		*language = shared.SourceGnewsLanguage(r.Configuration.Language.ValueString())
	} else {
		language = nil
	}
	var nullable []shared.Nullable = []shared.Nullable{}
	for _, nullableItem := range r.Configuration.Nullable {
		nullable = append(nullable, shared.Nullable(nullableItem.ValueString()))
	}
	var query string
	query = r.Configuration.Query.ValueString()

	sortby := new(shared.SourceGnewsSortBy)
	if !r.Configuration.Sortby.IsUnknown() && !r.Configuration.Sortby.IsNull() {
		*sortby = shared.SourceGnewsSortBy(r.Configuration.Sortby.ValueString())
	} else {
		sortby = nil
	}
	startDate := new(string)
	if !r.Configuration.StartDate.IsUnknown() && !r.Configuration.StartDate.IsNull() {
		*startDate = r.Configuration.StartDate.ValueString()
	} else {
		startDate = nil
	}
	topHeadlinesQuery := new(string)
	if !r.Configuration.TopHeadlinesQuery.IsUnknown() && !r.Configuration.TopHeadlinesQuery.IsNull() {
		*topHeadlinesQuery = r.Configuration.TopHeadlinesQuery.ValueString()
	} else {
		topHeadlinesQuery = nil
	}
	topHeadlinesTopic := new(shared.TopHeadlinesTopic)
	if !r.Configuration.TopHeadlinesTopic.IsUnknown() && !r.Configuration.TopHeadlinesTopic.IsNull() {
		*topHeadlinesTopic = shared.TopHeadlinesTopic(r.Configuration.TopHeadlinesTopic.ValueString())
	} else {
		topHeadlinesTopic = nil
	}
	configuration := shared.SourceGnews{
		APIKey:            apiKey,
		Country:           country,
		EndDate:           endDate,
		In:                in,
		Language:          language,
		Nullable:          nullable,
		Query:             query,
		Sortby:            sortby,
		StartDate:         startDate,
		TopHeadlinesQuery: topHeadlinesQuery,
		TopHeadlinesTopic: topHeadlinesTopic,
	}
	secretID := new(string)
	if !r.SecretID.IsUnknown() && !r.SecretID.IsNull() {
		*secretID = r.SecretID.ValueString()
	} else {
		secretID = nil
	}
	out := shared.SourceGnewsCreateRequest{
		Name:          name,
		DefinitionID:  definitionID,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
		SecretID:      secretID,
	}
	return &out
}

func (r *SourceGnewsResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
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

func (r *SourceGnewsResourceModel) ToSharedSourceGnewsPutRequest() *shared.SourceGnewsPutRequest {
	var name string
	name = r.Name.ValueString()

	var workspaceID string
	workspaceID = r.WorkspaceID.ValueString()

	var apiKey string
	apiKey = r.Configuration.APIKey.ValueString()

	country := new(shared.SourceGnewsUpdateCountry)
	if !r.Configuration.Country.IsUnknown() && !r.Configuration.Country.IsNull() {
		*country = shared.SourceGnewsUpdateCountry(r.Configuration.Country.ValueString())
	} else {
		country = nil
	}
	endDate := new(string)
	if !r.Configuration.EndDate.IsUnknown() && !r.Configuration.EndDate.IsNull() {
		*endDate = r.Configuration.EndDate.ValueString()
	} else {
		endDate = nil
	}
	var in []shared.SourceGnewsUpdateIn = []shared.SourceGnewsUpdateIn{}
	for _, inItem := range r.Configuration.In {
		in = append(in, shared.SourceGnewsUpdateIn(inItem.ValueString()))
	}
	language := new(shared.SourceGnewsUpdateLanguage)
	if !r.Configuration.Language.IsUnknown() && !r.Configuration.Language.IsNull() {
		*language = shared.SourceGnewsUpdateLanguage(r.Configuration.Language.ValueString())
	} else {
		language = nil
	}
	var nullable []shared.SourceGnewsUpdateNullable = []shared.SourceGnewsUpdateNullable{}
	for _, nullableItem := range r.Configuration.Nullable {
		nullable = append(nullable, shared.SourceGnewsUpdateNullable(nullableItem.ValueString()))
	}
	var query string
	query = r.Configuration.Query.ValueString()

	sortby := new(shared.SourceGnewsUpdateSortBy)
	if !r.Configuration.Sortby.IsUnknown() && !r.Configuration.Sortby.IsNull() {
		*sortby = shared.SourceGnewsUpdateSortBy(r.Configuration.Sortby.ValueString())
	} else {
		sortby = nil
	}
	startDate := new(string)
	if !r.Configuration.StartDate.IsUnknown() && !r.Configuration.StartDate.IsNull() {
		*startDate = r.Configuration.StartDate.ValueString()
	} else {
		startDate = nil
	}
	topHeadlinesQuery := new(string)
	if !r.Configuration.TopHeadlinesQuery.IsUnknown() && !r.Configuration.TopHeadlinesQuery.IsNull() {
		*topHeadlinesQuery = r.Configuration.TopHeadlinesQuery.ValueString()
	} else {
		topHeadlinesQuery = nil
	}
	topHeadlinesTopic := new(shared.SourceGnewsUpdateTopHeadlinesTopic)
	if !r.Configuration.TopHeadlinesTopic.IsUnknown() && !r.Configuration.TopHeadlinesTopic.IsNull() {
		*topHeadlinesTopic = shared.SourceGnewsUpdateTopHeadlinesTopic(r.Configuration.TopHeadlinesTopic.ValueString())
	} else {
		topHeadlinesTopic = nil
	}
	configuration := shared.SourceGnewsUpdate{
		APIKey:            apiKey,
		Country:           country,
		EndDate:           endDate,
		In:                in,
		Language:          language,
		Nullable:          nullable,
		Query:             query,
		Sortby:            sortby,
		StartDate:         startDate,
		TopHeadlinesQuery: topHeadlinesQuery,
		TopHeadlinesTopic: topHeadlinesTopic,
	}
	out := shared.SourceGnewsPutRequest{
		Name:          name,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
	}
	return &out
}
