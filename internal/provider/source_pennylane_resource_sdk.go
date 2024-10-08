// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package provider

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
	"time"
)

func (r *SourcePennylaneResourceModel) ToSharedSourcePennylaneCreateRequest() *shared.SourcePennylaneCreateRequest {
	apiKey := r.Configuration.APIKey.ValueString()
	startTime, _ := time.Parse(time.RFC3339Nano, r.Configuration.StartTime.ValueString())
	configuration := shared.SourcePennylane{
		APIKey:    apiKey,
		StartTime: startTime,
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
	out := shared.SourcePennylaneCreateRequest{
		Configuration: configuration,
		DefinitionID:  definitionID,
		Name:          name,
		SecretID:      secretID,
		WorkspaceID:   workspaceID,
	}
	return &out
}

func (r *SourcePennylaneResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
	if resp != nil {
		r.Name = types.StringValue(resp.Name)
		r.SourceID = types.StringValue(resp.SourceID)
		r.SourceType = types.StringValue(resp.SourceType)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *SourcePennylaneResourceModel) ToSharedSourcePennylanePutRequest() *shared.SourcePennylanePutRequest {
	apiKey := r.Configuration.APIKey.ValueString()
	startTime, _ := time.Parse(time.RFC3339Nano, r.Configuration.StartTime.ValueString())
	configuration := shared.SourcePennylaneUpdate{
		APIKey:    apiKey,
		StartTime: startTime,
	}
	name := r.Name.ValueString()
	workspaceID := r.WorkspaceID.ValueString()
	out := shared.SourcePennylanePutRequest{
		Configuration: configuration,
		Name:          name,
		WorkspaceID:   workspaceID,
	}
	return &out
}
