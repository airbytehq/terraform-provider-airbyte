// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package provider

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

func (r *SourceXkcdResourceModel) ToSharedSourceXkcdCreateRequest() *shared.SourceXkcdCreateRequest {
	comicNumber := new(string)
	if !r.Configuration.ComicNumber.IsUnknown() && !r.Configuration.ComicNumber.IsNull() {
		*comicNumber = r.Configuration.ComicNumber.ValueString()
	} else {
		comicNumber = nil
	}
	configuration := shared.SourceXkcd{
		ComicNumber: comicNumber,
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
	out := shared.SourceXkcdCreateRequest{
		Configuration: configuration,
		DefinitionID:  definitionID,
		Name:          name,
		SecretID:      secretID,
		WorkspaceID:   workspaceID,
	}
	return &out
}

func (r *SourceXkcdResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
	if resp != nil {
		r.Name = types.StringValue(resp.Name)
		r.SourceID = types.StringValue(resp.SourceID)
		r.SourceType = types.StringValue(resp.SourceType)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *SourceXkcdResourceModel) ToSharedSourceXkcdPutRequest() *shared.SourceXkcdPutRequest {
	comicNumber := new(string)
	if !r.Configuration.ComicNumber.IsUnknown() && !r.Configuration.ComicNumber.IsNull() {
		*comicNumber = r.Configuration.ComicNumber.ValueString()
	} else {
		comicNumber = nil
	}
	configuration := shared.SourceXkcdUpdate{
		ComicNumber: comicNumber,
	}
	name := r.Name.ValueString()
	workspaceID := r.WorkspaceID.ValueString()
	out := shared.SourceXkcdPutRequest{
		Configuration: configuration,
		Name:          name,
		WorkspaceID:   workspaceID,
	}
	return &out
}
