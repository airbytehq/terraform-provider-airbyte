// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package provider

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
	"time"
)

func (r *SourceLinnworksResourceModel) ToSharedSourceLinnworksCreateRequest() *shared.SourceLinnworksCreateRequest {
	applicationID := r.Configuration.ApplicationID.ValueString()
	applicationSecret := r.Configuration.ApplicationSecret.ValueString()
	startDate, _ := time.Parse(time.RFC3339Nano, r.Configuration.StartDate.ValueString())
	token := r.Configuration.Token.ValueString()
	configuration := shared.SourceLinnworks{
		ApplicationID:     applicationID,
		ApplicationSecret: applicationSecret,
		StartDate:         startDate,
		Token:             token,
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
	out := shared.SourceLinnworksCreateRequest{
		Configuration: configuration,
		DefinitionID:  definitionID,
		Name:          name,
		SecretID:      secretID,
		WorkspaceID:   workspaceID,
	}
	return &out
}

func (r *SourceLinnworksResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
	if resp != nil {
		r.Name = types.StringValue(resp.Name)
		r.SourceID = types.StringValue(resp.SourceID)
		r.SourceType = types.StringValue(resp.SourceType)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *SourceLinnworksResourceModel) ToSharedSourceLinnworksPutRequest() *shared.SourceLinnworksPutRequest {
	applicationID := r.Configuration.ApplicationID.ValueString()
	applicationSecret := r.Configuration.ApplicationSecret.ValueString()
	startDate, _ := time.Parse(time.RFC3339Nano, r.Configuration.StartDate.ValueString())
	token := r.Configuration.Token.ValueString()
	configuration := shared.SourceLinnworksUpdate{
		ApplicationID:     applicationID,
		ApplicationSecret: applicationSecret,
		StartDate:         startDate,
		Token:             token,
	}
	name := r.Name.ValueString()
	workspaceID := r.WorkspaceID.ValueString()
	out := shared.SourceLinnworksPutRequest{
		Configuration: configuration,
		Name:          name,
		WorkspaceID:   workspaceID,
	}
	return &out
}
