// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package provider

import (
	tfTypes "github.com/airbytehq/terraform-provider-airbyte/internal/provider/types"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	customTypes "github.com/airbytehq/terraform-provider-airbyte/internal/sdk/types"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

func (r *SourceAwsCloudtrailResourceModel) ToSharedSourceAwsCloudtrailCreateRequest() *shared.SourceAwsCloudtrailCreateRequest {
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

	var awsKeyID string
	awsKeyID = r.Configuration.AwsKeyID.ValueString()

	awsRegionName := new(string)
	if !r.Configuration.AwsRegionName.IsUnknown() && !r.Configuration.AwsRegionName.IsNull() {
		*awsRegionName = r.Configuration.AwsRegionName.ValueString()
	} else {
		awsRegionName = nil
	}
	var awsSecretKey string
	awsSecretKey = r.Configuration.AwsSecretKey.ValueString()

	var lookupAttributesFilter *shared.FilterAppliedWhileFetchingRecordsBasedOnAttributeKeyAndAttributeValueWhichWillBeAppendedOnTheRequestBody
	if r.Configuration.LookupAttributesFilter != nil {
		attributeKey := new(string)
		if !r.Configuration.LookupAttributesFilter.AttributeKey.IsUnknown() && !r.Configuration.LookupAttributesFilter.AttributeKey.IsNull() {
			*attributeKey = r.Configuration.LookupAttributesFilter.AttributeKey.ValueString()
		} else {
			attributeKey = nil
		}
		attributeValue := new(string)
		if !r.Configuration.LookupAttributesFilter.AttributeValue.IsUnknown() && !r.Configuration.LookupAttributesFilter.AttributeValue.IsNull() {
			*attributeValue = r.Configuration.LookupAttributesFilter.AttributeValue.ValueString()
		} else {
			attributeValue = nil
		}
		lookupAttributesFilter = &shared.FilterAppliedWhileFetchingRecordsBasedOnAttributeKeyAndAttributeValueWhichWillBeAppendedOnTheRequestBody{
			AttributeKey:   attributeKey,
			AttributeValue: attributeValue,
		}
	}
	startDate := new(customTypes.Date)
	if !r.Configuration.StartDate.IsUnknown() && !r.Configuration.StartDate.IsNull() {
		startDate = customTypes.MustNewDateFromString(r.Configuration.StartDate.ValueString())
	} else {
		startDate = nil
	}
	configuration := shared.SourceAwsCloudtrail{
		AwsKeyID:               awsKeyID,
		AwsRegionName:          awsRegionName,
		AwsSecretKey:           awsSecretKey,
		LookupAttributesFilter: lookupAttributesFilter,
		StartDate:              startDate,
	}
	secretID := new(string)
	if !r.SecretID.IsUnknown() && !r.SecretID.IsNull() {
		*secretID = r.SecretID.ValueString()
	} else {
		secretID = nil
	}
	out := shared.SourceAwsCloudtrailCreateRequest{
		Name:          name,
		DefinitionID:  definitionID,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
		SecretID:      secretID,
	}
	return &out
}

func (r *SourceAwsCloudtrailResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
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

func (r *SourceAwsCloudtrailResourceModel) ToSharedSourceAwsCloudtrailPutRequest() *shared.SourceAwsCloudtrailPutRequest {
	var name string
	name = r.Name.ValueString()

	var workspaceID string
	workspaceID = r.WorkspaceID.ValueString()

	var awsKeyID string
	awsKeyID = r.Configuration.AwsKeyID.ValueString()

	awsRegionName := new(string)
	if !r.Configuration.AwsRegionName.IsUnknown() && !r.Configuration.AwsRegionName.IsNull() {
		*awsRegionName = r.Configuration.AwsRegionName.ValueString()
	} else {
		awsRegionName = nil
	}
	var awsSecretKey string
	awsSecretKey = r.Configuration.AwsSecretKey.ValueString()

	var lookupAttributesFilter *shared.SourceAwsCloudtrailUpdateFilterAppliedWhileFetchingRecordsBasedOnAttributeKeyAndAttributeValueWhichWillBeAppendedOnTheRequestBody
	if r.Configuration.LookupAttributesFilter != nil {
		attributeKey := new(string)
		if !r.Configuration.LookupAttributesFilter.AttributeKey.IsUnknown() && !r.Configuration.LookupAttributesFilter.AttributeKey.IsNull() {
			*attributeKey = r.Configuration.LookupAttributesFilter.AttributeKey.ValueString()
		} else {
			attributeKey = nil
		}
		attributeValue := new(string)
		if !r.Configuration.LookupAttributesFilter.AttributeValue.IsUnknown() && !r.Configuration.LookupAttributesFilter.AttributeValue.IsNull() {
			*attributeValue = r.Configuration.LookupAttributesFilter.AttributeValue.ValueString()
		} else {
			attributeValue = nil
		}
		lookupAttributesFilter = &shared.SourceAwsCloudtrailUpdateFilterAppliedWhileFetchingRecordsBasedOnAttributeKeyAndAttributeValueWhichWillBeAppendedOnTheRequestBody{
			AttributeKey:   attributeKey,
			AttributeValue: attributeValue,
		}
	}
	startDate := new(customTypes.Date)
	if !r.Configuration.StartDate.IsUnknown() && !r.Configuration.StartDate.IsNull() {
		startDate = customTypes.MustNewDateFromString(r.Configuration.StartDate.ValueString())
	} else {
		startDate = nil
	}
	configuration := shared.SourceAwsCloudtrailUpdate{
		AwsKeyID:               awsKeyID,
		AwsRegionName:          awsRegionName,
		AwsSecretKey:           awsSecretKey,
		LookupAttributesFilter: lookupAttributesFilter,
		StartDate:              startDate,
	}
	out := shared.SourceAwsCloudtrailPutRequest{
		Name:          name,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
	}
	return &out
}
