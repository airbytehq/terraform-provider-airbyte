// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package provider

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
	"time"
)

func (r *SourceShortcutResourceModel) ToSharedSourceShortcutCreateRequest() *shared.SourceShortcutCreateRequest {
	apiKey2 := r.Configuration.APIKey2.ValueString()
	query := new(string)
	if !r.Configuration.Query.IsUnknown() && !r.Configuration.Query.IsNull() {
		*query = r.Configuration.Query.ValueString()
	} else {
		query = nil
	}
	startDate, _ := time.Parse(time.RFC3339Nano, r.Configuration.StartDate.ValueString())
	configuration := shared.SourceShortcut{
		APIKey2:   apiKey2,
		Query:     query,
		StartDate: startDate,
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
	out := shared.SourceShortcutCreateRequest{
		Configuration: configuration,
		DefinitionID:  definitionID,
		Name:          name,
		SecretID:      secretID,
		WorkspaceID:   workspaceID,
	}
	return &out
}

func (r *SourceShortcutResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
	if resp != nil {
		r.Name = types.StringValue(resp.Name)
		r.SourceID = types.StringValue(resp.SourceID)
		r.SourceType = types.StringValue(resp.SourceType)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *SourceShortcutResourceModel) ToSharedSourceShortcutPutRequest() *shared.SourceShortcutPutRequest {
	apiKey2 := r.Configuration.APIKey2.ValueString()
	query := new(string)
	if !r.Configuration.Query.IsUnknown() && !r.Configuration.Query.IsNull() {
		*query = r.Configuration.Query.ValueString()
	} else {
		query = nil
	}
	startDate, _ := time.Parse(time.RFC3339Nano, r.Configuration.StartDate.ValueString())
	configuration := shared.SourceShortcutUpdate{
		APIKey2:   apiKey2,
		Query:     query,
		StartDate: startDate,
	}
	name := r.Name.ValueString()
	workspaceID := r.WorkspaceID.ValueString()
	out := shared.SourceShortcutPutRequest{
		Configuration: configuration,
		Name:          name,
		WorkspaceID:   workspaceID,
	}
	return &out
}
