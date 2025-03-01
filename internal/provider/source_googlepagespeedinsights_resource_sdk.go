// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package provider

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

func (r *SourceGooglePagespeedInsightsResourceModel) ToSharedSourceGooglePagespeedInsightsCreateRequest() *shared.SourceGooglePagespeedInsightsCreateRequest {
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

	apiKey := new(string)
	if !r.Configuration.APIKey.IsUnknown() && !r.Configuration.APIKey.IsNull() {
		*apiKey = r.Configuration.APIKey.ValueString()
	} else {
		apiKey = nil
	}
	var categories []shared.Categories = []shared.Categories{}
	for _, categoriesItem := range r.Configuration.Categories {
		categories = append(categories, shared.Categories(categoriesItem.ValueString()))
	}
	var strategies []shared.Strategies = []shared.Strategies{}
	for _, strategiesItem := range r.Configuration.Strategies {
		strategies = append(strategies, shared.Strategies(strategiesItem.ValueString()))
	}
	var urls []string = []string{}
	for _, urlsItem := range r.Configuration.Urls {
		urls = append(urls, urlsItem.ValueString())
	}
	configuration := shared.SourceGooglePagespeedInsights{
		APIKey:     apiKey,
		Categories: categories,
		Strategies: strategies,
		Urls:       urls,
	}
	secretID := new(string)
	if !r.SecretID.IsUnknown() && !r.SecretID.IsNull() {
		*secretID = r.SecretID.ValueString()
	} else {
		secretID = nil
	}
	out := shared.SourceGooglePagespeedInsightsCreateRequest{
		Name:          name,
		DefinitionID:  definitionID,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
		SecretID:      secretID,
	}
	return &out
}

func (r *SourceGooglePagespeedInsightsResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
	if resp != nil {
		r.CreatedAt = types.Int64Value(resp.CreatedAt)
		r.DefinitionID = types.StringValue(resp.DefinitionID)
		r.Name = types.StringValue(resp.Name)
		r.SourceID = types.StringValue(resp.SourceID)
		r.SourceType = types.StringValue(resp.SourceType)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *SourceGooglePagespeedInsightsResourceModel) ToSharedSourceGooglePagespeedInsightsPutRequest() *shared.SourceGooglePagespeedInsightsPutRequest {
	var name string
	name = r.Name.ValueString()

	var workspaceID string
	workspaceID = r.WorkspaceID.ValueString()

	apiKey := new(string)
	if !r.Configuration.APIKey.IsUnknown() && !r.Configuration.APIKey.IsNull() {
		*apiKey = r.Configuration.APIKey.ValueString()
	} else {
		apiKey = nil
	}
	var categories []shared.SourceGooglePagespeedInsightsUpdateCategories = []shared.SourceGooglePagespeedInsightsUpdateCategories{}
	for _, categoriesItem := range r.Configuration.Categories {
		categories = append(categories, shared.SourceGooglePagespeedInsightsUpdateCategories(categoriesItem.ValueString()))
	}
	var strategies []shared.SourceGooglePagespeedInsightsUpdateStrategies = []shared.SourceGooglePagespeedInsightsUpdateStrategies{}
	for _, strategiesItem := range r.Configuration.Strategies {
		strategies = append(strategies, shared.SourceGooglePagespeedInsightsUpdateStrategies(strategiesItem.ValueString()))
	}
	var urls []string = []string{}
	for _, urlsItem := range r.Configuration.Urls {
		urls = append(urls, urlsItem.ValueString())
	}
	configuration := shared.SourceGooglePagespeedInsightsUpdate{
		APIKey:     apiKey,
		Categories: categories,
		Strategies: strategies,
		Urls:       urls,
	}
	out := shared.SourceGooglePagespeedInsightsPutRequest{
		Name:          name,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
	}
	return &out
}
