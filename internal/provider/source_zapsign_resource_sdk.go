// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package provider

import (
	"encoding/json"
	tfTypes "github.com/airbytehq/terraform-provider-airbyte/internal/provider/types"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
	"time"
)

func (r *SourceZapsignResourceModel) ToSharedSourceZapsignCreateRequest() *shared.SourceZapsignCreateRequest {
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

	var apiToken string
	apiToken = r.Configuration.APIToken.ValueString()

	var signerIds []interface{} = []interface{}{}
	for _, signerIdsItem := range r.Configuration.SignerIds {
		var signerIdsTmp interface{}
		_ = json.Unmarshal([]byte(signerIdsItem.ValueString()), &signerIdsTmp)
		signerIds = append(signerIds, signerIdsTmp)
	}
	startDate, _ := time.Parse(time.RFC3339Nano, r.Configuration.StartDate.ValueString())
	configuration := shared.SourceZapsign{
		APIToken:  apiToken,
		SignerIds: signerIds,
		StartDate: startDate,
	}
	secretID := new(string)
	if !r.SecretID.IsUnknown() && !r.SecretID.IsNull() {
		*secretID = r.SecretID.ValueString()
	} else {
		secretID = nil
	}
	out := shared.SourceZapsignCreateRequest{
		Name:          name,
		DefinitionID:  definitionID,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
		SecretID:      secretID,
	}
	return &out
}

func (r *SourceZapsignResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
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

func (r *SourceZapsignResourceModel) ToSharedSourceZapsignPutRequest() *shared.SourceZapsignPutRequest {
	var name string
	name = r.Name.ValueString()

	var workspaceID string
	workspaceID = r.WorkspaceID.ValueString()

	var apiToken string
	apiToken = r.Configuration.APIToken.ValueString()

	var signerIds []interface{} = []interface{}{}
	for _, signerIdsItem := range r.Configuration.SignerIds {
		var signerIdsTmp interface{}
		_ = json.Unmarshal([]byte(signerIdsItem.ValueString()), &signerIdsTmp)
		signerIds = append(signerIds, signerIdsTmp)
	}
	startDate, _ := time.Parse(time.RFC3339Nano, r.Configuration.StartDate.ValueString())
	configuration := shared.SourceZapsignUpdate{
		APIToken:  apiToken,
		SignerIds: signerIds,
		StartDate: startDate,
	}
	out := shared.SourceZapsignPutRequest{
		Name:          name,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
	}
	return &out
}
