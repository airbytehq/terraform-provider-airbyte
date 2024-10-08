// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package provider

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
	"time"
)

func (r *SourceGuruResourceModel) ToSharedSourceGuruCreateRequest() *shared.SourceGuruCreateRequest {
	password := new(string)
	if !r.Configuration.Password.IsUnknown() && !r.Configuration.Password.IsNull() {
		*password = r.Configuration.Password.ValueString()
	} else {
		password = nil
	}
	searchCardsQuery := new(string)
	if !r.Configuration.SearchCardsQuery.IsUnknown() && !r.Configuration.SearchCardsQuery.IsNull() {
		*searchCardsQuery = r.Configuration.SearchCardsQuery.ValueString()
	} else {
		searchCardsQuery = nil
	}
	startDate, _ := time.Parse(time.RFC3339Nano, r.Configuration.StartDate.ValueString())
	teamID := new(string)
	if !r.Configuration.TeamID.IsUnknown() && !r.Configuration.TeamID.IsNull() {
		*teamID = r.Configuration.TeamID.ValueString()
	} else {
		teamID = nil
	}
	username := r.Configuration.Username.ValueString()
	configuration := shared.SourceGuru{
		Password:         password,
		SearchCardsQuery: searchCardsQuery,
		StartDate:        startDate,
		TeamID:           teamID,
		Username:         username,
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
	out := shared.SourceGuruCreateRequest{
		Configuration: configuration,
		DefinitionID:  definitionID,
		Name:          name,
		SecretID:      secretID,
		WorkspaceID:   workspaceID,
	}
	return &out
}

func (r *SourceGuruResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
	if resp != nil {
		r.Name = types.StringValue(resp.Name)
		r.SourceID = types.StringValue(resp.SourceID)
		r.SourceType = types.StringValue(resp.SourceType)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *SourceGuruResourceModel) ToSharedSourceGuruPutRequest() *shared.SourceGuruPutRequest {
	password := new(string)
	if !r.Configuration.Password.IsUnknown() && !r.Configuration.Password.IsNull() {
		*password = r.Configuration.Password.ValueString()
	} else {
		password = nil
	}
	searchCardsQuery := new(string)
	if !r.Configuration.SearchCardsQuery.IsUnknown() && !r.Configuration.SearchCardsQuery.IsNull() {
		*searchCardsQuery = r.Configuration.SearchCardsQuery.ValueString()
	} else {
		searchCardsQuery = nil
	}
	startDate, _ := time.Parse(time.RFC3339Nano, r.Configuration.StartDate.ValueString())
	teamID := new(string)
	if !r.Configuration.TeamID.IsUnknown() && !r.Configuration.TeamID.IsNull() {
		*teamID = r.Configuration.TeamID.ValueString()
	} else {
		teamID = nil
	}
	username := r.Configuration.Username.ValueString()
	configuration := shared.SourceGuruUpdate{
		Password:         password,
		SearchCardsQuery: searchCardsQuery,
		StartDate:        startDate,
		TeamID:           teamID,
		Username:         username,
	}
	name := r.Name.ValueString()
	workspaceID := r.WorkspaceID.ValueString()
	out := shared.SourceGuruPutRequest{
		Configuration: configuration,
		Name:          name,
		WorkspaceID:   workspaceID,
	}
	return &out
}
