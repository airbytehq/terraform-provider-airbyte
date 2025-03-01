// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package provider

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
	"time"
)

func (r *SourceAlgoliaResourceModel) ToSharedSourceAlgoliaCreateRequest() *shared.SourceAlgoliaCreateRequest {
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

	var applicationID string
	applicationID = r.Configuration.ApplicationID.ValueString()

	searchQuery := new(string)
	if !r.Configuration.SearchQuery.IsUnknown() && !r.Configuration.SearchQuery.IsNull() {
		*searchQuery = r.Configuration.SearchQuery.ValueString()
	} else {
		searchQuery = nil
	}
	startDate, _ := time.Parse(time.RFC3339Nano, r.Configuration.StartDate.ValueString())
	objectID := new(string)
	if !r.Configuration.ObjectID.IsUnknown() && !r.Configuration.ObjectID.IsNull() {
		*objectID = r.Configuration.ObjectID.ValueString()
	} else {
		objectID = nil
	}
	configuration := shared.SourceAlgolia{
		APIKey:        apiKey,
		ApplicationID: applicationID,
		SearchQuery:   searchQuery,
		StartDate:     startDate,
		ObjectID:      objectID,
	}
	secretID := new(string)
	if !r.SecretID.IsUnknown() && !r.SecretID.IsNull() {
		*secretID = r.SecretID.ValueString()
	} else {
		secretID = nil
	}
	out := shared.SourceAlgoliaCreateRequest{
		Name:          name,
		DefinitionID:  definitionID,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
		SecretID:      secretID,
	}
	return &out
}

func (r *SourceAlgoliaResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
	if resp != nil {
		r.CreatedAt = types.Int64Value(resp.CreatedAt)
		r.DefinitionID = types.StringValue(resp.DefinitionID)
		r.Name = types.StringValue(resp.Name)
		r.SourceID = types.StringValue(resp.SourceID)
		r.SourceType = types.StringValue(resp.SourceType)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *SourceAlgoliaResourceModel) ToSharedSourceAlgoliaPutRequest() *shared.SourceAlgoliaPutRequest {
	var name string
	name = r.Name.ValueString()

	var workspaceID string
	workspaceID = r.WorkspaceID.ValueString()

	var apiKey string
	apiKey = r.Configuration.APIKey.ValueString()

	var applicationID string
	applicationID = r.Configuration.ApplicationID.ValueString()

	searchQuery := new(string)
	if !r.Configuration.SearchQuery.IsUnknown() && !r.Configuration.SearchQuery.IsNull() {
		*searchQuery = r.Configuration.SearchQuery.ValueString()
	} else {
		searchQuery = nil
	}
	startDate, _ := time.Parse(time.RFC3339Nano, r.Configuration.StartDate.ValueString())
	objectID := new(string)
	if !r.Configuration.ObjectID.IsUnknown() && !r.Configuration.ObjectID.IsNull() {
		*objectID = r.Configuration.ObjectID.ValueString()
	} else {
		objectID = nil
	}
	configuration := shared.SourceAlgoliaUpdate{
		APIKey:        apiKey,
		ApplicationID: applicationID,
		SearchQuery:   searchQuery,
		StartDate:     startDate,
		ObjectID:      objectID,
	}
	out := shared.SourceAlgoliaPutRequest{
		Name:          name,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
	}
	return &out
}
