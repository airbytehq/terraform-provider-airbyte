// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package provider

import (
	"encoding/json"
	tfTypes "github.com/airbytehq/terraform-provider-airbyte/internal/provider/types"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

func (r *DestinationAzureBlobStorageResourceModel) ToSharedDestinationAzureBlobStorageCreateRequest() *shared.DestinationAzureBlobStorageCreateRequest {
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

	azureBlobStorageAccountKey := new(string)
	if !r.Configuration.AzureBlobStorageAccountKey.IsUnknown() && !r.Configuration.AzureBlobStorageAccountKey.IsNull() {
		*azureBlobStorageAccountKey = r.Configuration.AzureBlobStorageAccountKey.ValueString()
	} else {
		azureBlobStorageAccountKey = nil
	}
	var azureBlobStorageAccountName string
	azureBlobStorageAccountName = r.Configuration.AzureBlobStorageAccountName.ValueString()

	var azureBlobStorageContainerName string
	azureBlobStorageContainerName = r.Configuration.AzureBlobStorageContainerName.ValueString()

	azureBlobStorageEndpointDomainName := new(string)
	if !r.Configuration.AzureBlobStorageEndpointDomainName.IsUnknown() && !r.Configuration.AzureBlobStorageEndpointDomainName.IsNull() {
		*azureBlobStorageEndpointDomainName = r.Configuration.AzureBlobStorageEndpointDomainName.ValueString()
	} else {
		azureBlobStorageEndpointDomainName = nil
	}
	azureBlobStorageSpillSize := new(int64)
	if !r.Configuration.AzureBlobStorageSpillSize.IsUnknown() && !r.Configuration.AzureBlobStorageSpillSize.IsNull() {
		*azureBlobStorageSpillSize = r.Configuration.AzureBlobStorageSpillSize.ValueInt64()
	} else {
		azureBlobStorageSpillSize = nil
	}
	var format shared.OutputFormat
	var csvCommaSeparatedValues *shared.CSVCommaSeparatedValues
	if r.Configuration.Format.CSVCommaSeparatedValues != nil {
		flattening := new(shared.Flattening)
		if !r.Configuration.Format.CSVCommaSeparatedValues.Flattening.IsUnknown() && !r.Configuration.Format.CSVCommaSeparatedValues.Flattening.IsNull() {
			*flattening = shared.Flattening(r.Configuration.Format.CSVCommaSeparatedValues.Flattening.ValueString())
		} else {
			flattening = nil
		}
		formatType := new(shared.FormatType)
		if !r.Configuration.Format.CSVCommaSeparatedValues.FormatType.IsUnknown() && !r.Configuration.Format.CSVCommaSeparatedValues.FormatType.IsNull() {
			*formatType = shared.FormatType(r.Configuration.Format.CSVCommaSeparatedValues.FormatType.ValueString())
		} else {
			formatType = nil
		}
		var additionalProperties interface{}
		if !r.Configuration.Format.CSVCommaSeparatedValues.AdditionalProperties.IsUnknown() && !r.Configuration.Format.CSVCommaSeparatedValues.AdditionalProperties.IsNull() {
			_ = json.Unmarshal([]byte(r.Configuration.Format.CSVCommaSeparatedValues.AdditionalProperties.ValueString()), &additionalProperties)
		}
		csvCommaSeparatedValues = &shared.CSVCommaSeparatedValues{
			Flattening:           flattening,
			FormatType:           formatType,
			AdditionalProperties: additionalProperties,
		}
	}
	if csvCommaSeparatedValues != nil {
		format = shared.OutputFormat{
			CSVCommaSeparatedValues: csvCommaSeparatedValues,
		}
	}
	var destinationAzureBlobStorageJSONLinesNewlineDelimitedJSON *shared.DestinationAzureBlobStorageJSONLinesNewlineDelimitedJSON
	if r.Configuration.Format.JSONLinesNewlineDelimitedJSON != nil {
		flattening1 := new(shared.DestinationAzureBlobStorageFlattening)
		if !r.Configuration.Format.JSONLinesNewlineDelimitedJSON.Flattening.IsUnknown() && !r.Configuration.Format.JSONLinesNewlineDelimitedJSON.Flattening.IsNull() {
			*flattening1 = shared.DestinationAzureBlobStorageFlattening(r.Configuration.Format.JSONLinesNewlineDelimitedJSON.Flattening.ValueString())
		} else {
			flattening1 = nil
		}
		formatType1 := new(shared.DestinationAzureBlobStorageFormatType)
		if !r.Configuration.Format.JSONLinesNewlineDelimitedJSON.FormatType.IsUnknown() && !r.Configuration.Format.JSONLinesNewlineDelimitedJSON.FormatType.IsNull() {
			*formatType1 = shared.DestinationAzureBlobStorageFormatType(r.Configuration.Format.JSONLinesNewlineDelimitedJSON.FormatType.ValueString())
		} else {
			formatType1 = nil
		}
		var additionalProperties1 interface{}
		if !r.Configuration.Format.JSONLinesNewlineDelimitedJSON.AdditionalProperties.IsUnknown() && !r.Configuration.Format.JSONLinesNewlineDelimitedJSON.AdditionalProperties.IsNull() {
			_ = json.Unmarshal([]byte(r.Configuration.Format.JSONLinesNewlineDelimitedJSON.AdditionalProperties.ValueString()), &additionalProperties1)
		}
		destinationAzureBlobStorageJSONLinesNewlineDelimitedJSON = &shared.DestinationAzureBlobStorageJSONLinesNewlineDelimitedJSON{
			Flattening:           flattening1,
			FormatType:           formatType1,
			AdditionalProperties: additionalProperties1,
		}
	}
	if destinationAzureBlobStorageJSONLinesNewlineDelimitedJSON != nil {
		format = shared.OutputFormat{
			DestinationAzureBlobStorageJSONLinesNewlineDelimitedJSON: destinationAzureBlobStorageJSONLinesNewlineDelimitedJSON,
		}
	}
	sharedAccessSignature := new(string)
	if !r.Configuration.SharedAccessSignature.IsUnknown() && !r.Configuration.SharedAccessSignature.IsNull() {
		*sharedAccessSignature = r.Configuration.SharedAccessSignature.ValueString()
	} else {
		sharedAccessSignature = nil
	}
	configuration := shared.DestinationAzureBlobStorage{
		AzureBlobStorageAccountKey:         azureBlobStorageAccountKey,
		AzureBlobStorageAccountName:        azureBlobStorageAccountName,
		AzureBlobStorageContainerName:      azureBlobStorageContainerName,
		AzureBlobStorageEndpointDomainName: azureBlobStorageEndpointDomainName,
		AzureBlobStorageSpillSize:          azureBlobStorageSpillSize,
		Format:                             format,
		SharedAccessSignature:              sharedAccessSignature,
	}
	out := shared.DestinationAzureBlobStorageCreateRequest{
		Name:          name,
		DefinitionID:  definitionID,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
	}
	return &out
}

func (r *DestinationAzureBlobStorageResourceModel) RefreshFromSharedDestinationResponse(resp *shared.DestinationResponse) {
	if resp != nil {
		r.CreatedAt = types.Int64Value(resp.CreatedAt)
		r.DefinitionID = types.StringValue(resp.DefinitionID)
		r.DestinationID = types.StringValue(resp.DestinationID)
		r.DestinationType = types.StringValue(resp.DestinationType)
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
		r.WorkspaceID = types.StringValue(resp.WorkspaceID)
	}
}

func (r *DestinationAzureBlobStorageResourceModel) ToSharedDestinationAzureBlobStoragePutRequest() *shared.DestinationAzureBlobStoragePutRequest {
	var name string
	name = r.Name.ValueString()

	var workspaceID string
	workspaceID = r.WorkspaceID.ValueString()

	azureBlobStorageAccountKey := new(string)
	if !r.Configuration.AzureBlobStorageAccountKey.IsUnknown() && !r.Configuration.AzureBlobStorageAccountKey.IsNull() {
		*azureBlobStorageAccountKey = r.Configuration.AzureBlobStorageAccountKey.ValueString()
	} else {
		azureBlobStorageAccountKey = nil
	}
	var azureBlobStorageAccountName string
	azureBlobStorageAccountName = r.Configuration.AzureBlobStorageAccountName.ValueString()

	var azureBlobStorageContainerName string
	azureBlobStorageContainerName = r.Configuration.AzureBlobStorageContainerName.ValueString()

	azureBlobStorageEndpointDomainName := new(string)
	if !r.Configuration.AzureBlobStorageEndpointDomainName.IsUnknown() && !r.Configuration.AzureBlobStorageEndpointDomainName.IsNull() {
		*azureBlobStorageEndpointDomainName = r.Configuration.AzureBlobStorageEndpointDomainName.ValueString()
	} else {
		azureBlobStorageEndpointDomainName = nil
	}
	azureBlobStorageSpillSize := new(int64)
	if !r.Configuration.AzureBlobStorageSpillSize.IsUnknown() && !r.Configuration.AzureBlobStorageSpillSize.IsNull() {
		*azureBlobStorageSpillSize = r.Configuration.AzureBlobStorageSpillSize.ValueInt64()
	} else {
		azureBlobStorageSpillSize = nil
	}
	var format shared.DestinationAzureBlobStorageUpdateOutputFormat
	var destinationAzureBlobStorageUpdateCSVCommaSeparatedValues *shared.DestinationAzureBlobStorageUpdateCSVCommaSeparatedValues
	if r.Configuration.Format.CSVCommaSeparatedValues != nil {
		flattening := new(shared.DestinationAzureBlobStorageUpdateFlattening)
		if !r.Configuration.Format.CSVCommaSeparatedValues.Flattening.IsUnknown() && !r.Configuration.Format.CSVCommaSeparatedValues.Flattening.IsNull() {
			*flattening = shared.DestinationAzureBlobStorageUpdateFlattening(r.Configuration.Format.CSVCommaSeparatedValues.Flattening.ValueString())
		} else {
			flattening = nil
		}
		formatType := new(shared.DestinationAzureBlobStorageUpdateFormatType)
		if !r.Configuration.Format.CSVCommaSeparatedValues.FormatType.IsUnknown() && !r.Configuration.Format.CSVCommaSeparatedValues.FormatType.IsNull() {
			*formatType = shared.DestinationAzureBlobStorageUpdateFormatType(r.Configuration.Format.CSVCommaSeparatedValues.FormatType.ValueString())
		} else {
			formatType = nil
		}
		var additionalProperties interface{}
		if !r.Configuration.Format.CSVCommaSeparatedValues.AdditionalProperties.IsUnknown() && !r.Configuration.Format.CSVCommaSeparatedValues.AdditionalProperties.IsNull() {
			_ = json.Unmarshal([]byte(r.Configuration.Format.CSVCommaSeparatedValues.AdditionalProperties.ValueString()), &additionalProperties)
		}
		destinationAzureBlobStorageUpdateCSVCommaSeparatedValues = &shared.DestinationAzureBlobStorageUpdateCSVCommaSeparatedValues{
			Flattening:           flattening,
			FormatType:           formatType,
			AdditionalProperties: additionalProperties,
		}
	}
	if destinationAzureBlobStorageUpdateCSVCommaSeparatedValues != nil {
		format = shared.DestinationAzureBlobStorageUpdateOutputFormat{
			DestinationAzureBlobStorageUpdateCSVCommaSeparatedValues: destinationAzureBlobStorageUpdateCSVCommaSeparatedValues,
		}
	}
	var destinationAzureBlobStorageUpdateJSONLinesNewlineDelimitedJSON *shared.DestinationAzureBlobStorageUpdateJSONLinesNewlineDelimitedJSON
	if r.Configuration.Format.JSONLinesNewlineDelimitedJSON != nil {
		flattening1 := new(shared.DestinationAzureBlobStorageUpdateSchemasFlattening)
		if !r.Configuration.Format.JSONLinesNewlineDelimitedJSON.Flattening.IsUnknown() && !r.Configuration.Format.JSONLinesNewlineDelimitedJSON.Flattening.IsNull() {
			*flattening1 = shared.DestinationAzureBlobStorageUpdateSchemasFlattening(r.Configuration.Format.JSONLinesNewlineDelimitedJSON.Flattening.ValueString())
		} else {
			flattening1 = nil
		}
		formatType1 := new(shared.DestinationAzureBlobStorageUpdateSchemasFormatType)
		if !r.Configuration.Format.JSONLinesNewlineDelimitedJSON.FormatType.IsUnknown() && !r.Configuration.Format.JSONLinesNewlineDelimitedJSON.FormatType.IsNull() {
			*formatType1 = shared.DestinationAzureBlobStorageUpdateSchemasFormatType(r.Configuration.Format.JSONLinesNewlineDelimitedJSON.FormatType.ValueString())
		} else {
			formatType1 = nil
		}
		var additionalProperties1 interface{}
		if !r.Configuration.Format.JSONLinesNewlineDelimitedJSON.AdditionalProperties.IsUnknown() && !r.Configuration.Format.JSONLinesNewlineDelimitedJSON.AdditionalProperties.IsNull() {
			_ = json.Unmarshal([]byte(r.Configuration.Format.JSONLinesNewlineDelimitedJSON.AdditionalProperties.ValueString()), &additionalProperties1)
		}
		destinationAzureBlobStorageUpdateJSONLinesNewlineDelimitedJSON = &shared.DestinationAzureBlobStorageUpdateJSONLinesNewlineDelimitedJSON{
			Flattening:           flattening1,
			FormatType:           formatType1,
			AdditionalProperties: additionalProperties1,
		}
	}
	if destinationAzureBlobStorageUpdateJSONLinesNewlineDelimitedJSON != nil {
		format = shared.DestinationAzureBlobStorageUpdateOutputFormat{
			DestinationAzureBlobStorageUpdateJSONLinesNewlineDelimitedJSON: destinationAzureBlobStorageUpdateJSONLinesNewlineDelimitedJSON,
		}
	}
	sharedAccessSignature := new(string)
	if !r.Configuration.SharedAccessSignature.IsUnknown() && !r.Configuration.SharedAccessSignature.IsNull() {
		*sharedAccessSignature = r.Configuration.SharedAccessSignature.ValueString()
	} else {
		sharedAccessSignature = nil
	}
	configuration := shared.DestinationAzureBlobStorageUpdate{
		AzureBlobStorageAccountKey:         azureBlobStorageAccountKey,
		AzureBlobStorageAccountName:        azureBlobStorageAccountName,
		AzureBlobStorageContainerName:      azureBlobStorageContainerName,
		AzureBlobStorageEndpointDomainName: azureBlobStorageEndpointDomainName,
		AzureBlobStorageSpillSize:          azureBlobStorageSpillSize,
		Format:                             format,
		SharedAccessSignature:              sharedAccessSignature,
	}
	out := shared.DestinationAzureBlobStoragePutRequest{
		Name:          name,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
	}
	return &out
}
