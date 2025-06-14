// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package provider

import (
	"encoding/json"
	tfTypes "github.com/airbytehq/terraform-provider-airbyte/internal/provider/types"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
	"time"
)

func (r *SourceCimisResourceModel) ToSharedSourceCimisCreateRequest() *shared.SourceCimisCreateRequest {
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

	var dailyDataItems []interface{} = []interface{}{}
	for _, dailyDataItemsItem := range r.Configuration.DailyDataItems {
		var dailyDataItemsTmp interface{}
		_ = json.Unmarshal([]byte(dailyDataItemsItem.ValueString()), &dailyDataItemsTmp)
		dailyDataItems = append(dailyDataItems, dailyDataItemsTmp)
	}
	endDate, _ := time.Parse(time.RFC3339Nano, r.Configuration.EndDate.ValueString())
	var hourlyDataItems []interface{} = []interface{}{}
	for _, hourlyDataItemsItem := range r.Configuration.HourlyDataItems {
		var hourlyDataItemsTmp interface{}
		_ = json.Unmarshal([]byte(hourlyDataItemsItem.ValueString()), &hourlyDataItemsTmp)
		hourlyDataItems = append(hourlyDataItems, hourlyDataItemsTmp)
	}
	startDate, _ := time.Parse(time.RFC3339Nano, r.Configuration.StartDate.ValueString())
	var targets []interface{} = []interface{}{}
	for _, targetsItem := range r.Configuration.Targets {
		var targetsTmp interface{}
		_ = json.Unmarshal([]byte(targetsItem.ValueString()), &targetsTmp)
		targets = append(targets, targetsTmp)
	}
	targetsType := shared.TargetsType(r.Configuration.TargetsType.ValueString())
	unitOfMeasure := new(shared.UnitOfMeasure)
	if !r.Configuration.UnitOfMeasure.IsUnknown() && !r.Configuration.UnitOfMeasure.IsNull() {
		*unitOfMeasure = shared.UnitOfMeasure(r.Configuration.UnitOfMeasure.ValueString())
	} else {
		unitOfMeasure = nil
	}
	configuration := shared.SourceCimis{
		APIKey:          apiKey,
		DailyDataItems:  dailyDataItems,
		EndDate:         endDate,
		HourlyDataItems: hourlyDataItems,
		StartDate:       startDate,
		Targets:         targets,
		TargetsType:     targetsType,
		UnitOfMeasure:   unitOfMeasure,
	}
	secretID := new(string)
	if !r.SecretID.IsUnknown() && !r.SecretID.IsNull() {
		*secretID = r.SecretID.ValueString()
	} else {
		secretID = nil
	}
	out := shared.SourceCimisCreateRequest{
		Name:          name,
		DefinitionID:  definitionID,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
		SecretID:      secretID,
	}
	return &out
}

func (r *SourceCimisResourceModel) RefreshFromSharedSourceResponse(resp *shared.SourceResponse) {
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

func (r *SourceCimisResourceModel) ToSharedSourceCimisPutRequest() *shared.SourceCimisPutRequest {
	var name string
	name = r.Name.ValueString()

	var workspaceID string
	workspaceID = r.WorkspaceID.ValueString()

	var apiKey string
	apiKey = r.Configuration.APIKey.ValueString()

	var dailyDataItems []interface{} = []interface{}{}
	for _, dailyDataItemsItem := range r.Configuration.DailyDataItems {
		var dailyDataItemsTmp interface{}
		_ = json.Unmarshal([]byte(dailyDataItemsItem.ValueString()), &dailyDataItemsTmp)
		dailyDataItems = append(dailyDataItems, dailyDataItemsTmp)
	}
	endDate, _ := time.Parse(time.RFC3339Nano, r.Configuration.EndDate.ValueString())
	var hourlyDataItems []interface{} = []interface{}{}
	for _, hourlyDataItemsItem := range r.Configuration.HourlyDataItems {
		var hourlyDataItemsTmp interface{}
		_ = json.Unmarshal([]byte(hourlyDataItemsItem.ValueString()), &hourlyDataItemsTmp)
		hourlyDataItems = append(hourlyDataItems, hourlyDataItemsTmp)
	}
	startDate, _ := time.Parse(time.RFC3339Nano, r.Configuration.StartDate.ValueString())
	var targets []interface{} = []interface{}{}
	for _, targetsItem := range r.Configuration.Targets {
		var targetsTmp interface{}
		_ = json.Unmarshal([]byte(targetsItem.ValueString()), &targetsTmp)
		targets = append(targets, targetsTmp)
	}
	targetsType := shared.SourceCimisUpdateTargetsType(r.Configuration.TargetsType.ValueString())
	unitOfMeasure := new(shared.SourceCimisUpdateUnitOfMeasure)
	if !r.Configuration.UnitOfMeasure.IsUnknown() && !r.Configuration.UnitOfMeasure.IsNull() {
		*unitOfMeasure = shared.SourceCimisUpdateUnitOfMeasure(r.Configuration.UnitOfMeasure.ValueString())
	} else {
		unitOfMeasure = nil
	}
	configuration := shared.SourceCimisUpdate{
		APIKey:          apiKey,
		DailyDataItems:  dailyDataItems,
		EndDate:         endDate,
		HourlyDataItems: hourlyDataItems,
		StartDate:       startDate,
		Targets:         targets,
		TargetsType:     targetsType,
		UnitOfMeasure:   unitOfMeasure,
	}
	out := shared.SourceCimisPutRequest{
		Name:          name,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
	}
	return &out
}
