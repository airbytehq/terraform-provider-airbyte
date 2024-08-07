// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package provider

import (
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
	"time"
)

func (r *SourcePaystackResourceModel) ToSharedSourcePaystackCreateRequest() *shared.SourcePaystackCreateRequest {
	lookbackWindowDays := new(int64)
	if !r.Configuration.LookbackWindowDays.IsUnknown() && !r.Configuration.LookbackWindowDays.IsNull() {
		*lookbackWindowDays = r.Configuration.LookbackWindowDays.ValueInt64()
	} else {
		lookbackWindowDays = nil
	}
	secretKey := r.Configuration.SecretKey.ValueString()
	startDate, _ := time.Parse(time.RFC3339Nano, r.Configuration.StartDate.ValueString())
	configuration := shared.SourcePaystack{
		LookbackWindowDays: lookbackWindowDays,
		SecretKey:          secretKey,
		StartDate:          startDate,
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
	out := shared.SourcePaystackCreateRequest{
		Configuration: configuration,
		DefinitionID:  definitionID,
		Name:          name,
		SecretID:      secretID,
		WorkspaceID:   workspaceID,
	}
	return &out
}

func (r *SourcePaystackResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
	if resp != nil {
		r.Name = types.StringValue(resp.Name)
		r.SourceID = types.StringValue(resp.SourceID)
		r.SourceType = types.StringValue(resp.SourceType)
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *SourcePaystackResourceModel) ToSharedSourcePaystackPutRequest() *shared.SourcePaystackPutRequest {
	lookbackWindowDays := new(int64)
	if !r.Configuration.LookbackWindowDays.IsUnknown() && !r.Configuration.LookbackWindowDays.IsNull() {
		*lookbackWindowDays = r.Configuration.LookbackWindowDays.ValueInt64()
	} else {
		lookbackWindowDays = nil
	}
	secretKey := r.Configuration.SecretKey.ValueString()
	startDate, _ := time.Parse(time.RFC3339Nano, r.Configuration.StartDate.ValueString())
	configuration := shared.SourcePaystackUpdate{
		LookbackWindowDays: lookbackWindowDays,
		SecretKey:          secretKey,
		StartDate:          startDate,
	}
	name := r.Name.ValueString()
	workspaceID := r.WorkspaceID.ValueString()
	out := shared.SourcePaystackPutRequest{
		Configuration: configuration,
		Name:          name,
		WorkspaceID:   workspaceID,
	}
	return &out
}
