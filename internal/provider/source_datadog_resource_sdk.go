// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package provider

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

func (r *SourceDatadogResourceModel) ToSharedSourceDatadogCreateRequest() *shared.SourceDatadogCreateRequest {
	apiKey := r.Configuration.APIKey.ValueString()
	applicationKey := r.Configuration.ApplicationKey.ValueString()
	endDate := new(string)
	if !r.Configuration.EndDate.IsUnknown() && !r.Configuration.EndDate.IsNull() {
		*endDate = r.Configuration.EndDate.ValueString()
	} else {
		endDate = nil
	}
	maxRecordsPerRequest := new(int64)
	if !r.Configuration.MaxRecordsPerRequest.IsUnknown() && !r.Configuration.MaxRecordsPerRequest.IsNull() {
		*maxRecordsPerRequest = r.Configuration.MaxRecordsPerRequest.ValueInt64()
	} else {
		maxRecordsPerRequest = nil
	}
	var queries []shared.SourceDatadogQueries = []shared.SourceDatadogQueries{}
	for _, queriesItem := range r.Configuration.Queries {
		dataSource := shared.SourceDatadogDataSource(queriesItem.DataSource.ValueString())
		name := queriesItem.Name.ValueString()
		query := queriesItem.Query.ValueString()
		queries = append(queries, shared.SourceDatadogQueries{
			DataSource: dataSource,
			Name:       name,
			Query:      query,
		})
	}
	query1 := new(string)
	if !r.Configuration.Query.IsUnknown() && !r.Configuration.Query.IsNull() {
		*query1 = r.Configuration.Query.ValueString()
	} else {
		query1 = nil
	}
	site := new(shared.SourceDatadogSite)
	if !r.Configuration.Site.IsUnknown() && !r.Configuration.Site.IsNull() {
		*site = shared.SourceDatadogSite(r.Configuration.Site.ValueString())
	} else {
		site = nil
	}
	startDate := new(string)
	if !r.Configuration.StartDate.IsUnknown() && !r.Configuration.StartDate.IsNull() {
		*startDate = r.Configuration.StartDate.ValueString()
	} else {
		startDate = nil
	}
	configuration := shared.SourceDatadog{
		APIKey:               apiKey,
		ApplicationKey:       applicationKey,
		EndDate:              endDate,
		MaxRecordsPerRequest: maxRecordsPerRequest,
		Queries:              queries,
		Query:                query1,
		Site:                 site,
		StartDate:            startDate,
	}
	definitionID := new(string)
	if !r.DefinitionID.IsUnknown() && !r.DefinitionID.IsNull() {
		*definitionID = r.DefinitionID.ValueString()
	} else {
		definitionID = nil
	}
	name1 := r.Name.ValueString()
	secretID := new(string)
	if !r.SecretID.IsUnknown() && !r.SecretID.IsNull() {
		*secretID = r.SecretID.ValueString()
	} else {
		secretID = nil
	}
	workspaceID := r.WorkspaceID.ValueString()
	out := shared.SourceDatadogCreateRequest{
		Configuration: configuration,
		DefinitionID:  definitionID,
		Name:          name1,
		SecretID:      secretID,
		WorkspaceID:   workspaceID,
	}
	return &out
}

func (r *SourceDatadogResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
	if resp != nil {
		r.Name = types.StringValue(resp.Name)
		r.SourceID = types.StringValue(resp.SourceID)
		r.SourceType = types.StringValue(resp.SourceType)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *SourceDatadogResourceModel) ToSharedSourceDatadogPutRequest() *shared.SourceDatadogPutRequest {
	apiKey := r.Configuration.APIKey.ValueString()
	applicationKey := r.Configuration.ApplicationKey.ValueString()
	endDate := new(string)
	if !r.Configuration.EndDate.IsUnknown() && !r.Configuration.EndDate.IsNull() {
		*endDate = r.Configuration.EndDate.ValueString()
	} else {
		endDate = nil
	}
	maxRecordsPerRequest := new(int64)
	if !r.Configuration.MaxRecordsPerRequest.IsUnknown() && !r.Configuration.MaxRecordsPerRequest.IsNull() {
		*maxRecordsPerRequest = r.Configuration.MaxRecordsPerRequest.ValueInt64()
	} else {
		maxRecordsPerRequest = nil
	}
	var queries []shared.Queries = []shared.Queries{}
	for _, queriesItem := range r.Configuration.Queries {
		dataSource := shared.DataSource(queriesItem.DataSource.ValueString())
		name := queriesItem.Name.ValueString()
		query := queriesItem.Query.ValueString()
		queries = append(queries, shared.Queries{
			DataSource: dataSource,
			Name:       name,
			Query:      query,
		})
	}
	query1 := new(string)
	if !r.Configuration.Query.IsUnknown() && !r.Configuration.Query.IsNull() {
		*query1 = r.Configuration.Query.ValueString()
	} else {
		query1 = nil
	}
	site := new(shared.Site)
	if !r.Configuration.Site.IsUnknown() && !r.Configuration.Site.IsNull() {
		*site = shared.Site(r.Configuration.Site.ValueString())
	} else {
		site = nil
	}
	startDate := new(string)
	if !r.Configuration.StartDate.IsUnknown() && !r.Configuration.StartDate.IsNull() {
		*startDate = r.Configuration.StartDate.ValueString()
	} else {
		startDate = nil
	}
	configuration := shared.SourceDatadogUpdate{
		APIKey:               apiKey,
		ApplicationKey:       applicationKey,
		EndDate:              endDate,
		MaxRecordsPerRequest: maxRecordsPerRequest,
		Queries:              queries,
		Query:                query1,
		Site:                 site,
		StartDate:            startDate,
	}
	name1 := r.Name.ValueString()
	workspaceID := r.WorkspaceID.ValueString()
	out := shared.SourceDatadogPutRequest{
		Configuration: configuration,
		Name:          name1,
		WorkspaceID:   workspaceID,
	}
	return &out
}
