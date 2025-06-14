// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package provider

import (
	tfTypes "github.com/airbytehq/terraform-provider-airbyte/internal/provider/types"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

func (r *DestinationAstraResourceModel) ToSharedDestinationAstraCreateRequest() *shared.DestinationAstraCreateRequest {
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

	var embedding shared.Embedding
	var openAI *shared.OpenAI
	if r.Configuration.Embedding.OpenAI != nil {
		var openaiKey string
		openaiKey = r.Configuration.Embedding.OpenAI.OpenaiKey.ValueString()

		openAI = &shared.OpenAI{
			OpenaiKey: openaiKey,
		}
	}
	if openAI != nil {
		embedding = shared.Embedding{
			OpenAI: openAI,
		}
	}
	var cohere *shared.Cohere
	if r.Configuration.Embedding.Cohere != nil {
		var cohereKey string
		cohereKey = r.Configuration.Embedding.Cohere.CohereKey.ValueString()

		cohere = &shared.Cohere{
			CohereKey: cohereKey,
		}
	}
	if cohere != nil {
		embedding = shared.Embedding{
			Cohere: cohere,
		}
	}
	var fake *shared.Fake
	if r.Configuration.Embedding.Fake != nil {
		fake = &shared.Fake{}
	}
	if fake != nil {
		embedding = shared.Embedding{
			Fake: fake,
		}
	}
	var azureOpenAI *shared.AzureOpenAI
	if r.Configuration.Embedding.AzureOpenAI != nil {
		var apiBase string
		apiBase = r.Configuration.Embedding.AzureOpenAI.APIBase.ValueString()

		var deployment string
		deployment = r.Configuration.Embedding.AzureOpenAI.Deployment.ValueString()

		var openaiKey1 string
		openaiKey1 = r.Configuration.Embedding.AzureOpenAI.OpenaiKey.ValueString()

		azureOpenAI = &shared.AzureOpenAI{
			APIBase:    apiBase,
			Deployment: deployment,
			OpenaiKey:  openaiKey1,
		}
	}
	if azureOpenAI != nil {
		embedding = shared.Embedding{
			AzureOpenAI: azureOpenAI,
		}
	}
	var openAICompatible *shared.OpenAICompatible
	if r.Configuration.Embedding.OpenAICompatible != nil {
		apiKey := new(string)
		if !r.Configuration.Embedding.OpenAICompatible.APIKey.IsUnknown() && !r.Configuration.Embedding.OpenAICompatible.APIKey.IsNull() {
			*apiKey = r.Configuration.Embedding.OpenAICompatible.APIKey.ValueString()
		} else {
			apiKey = nil
		}
		var baseURL string
		baseURL = r.Configuration.Embedding.OpenAICompatible.BaseURL.ValueString()

		var dimensions int64
		dimensions = r.Configuration.Embedding.OpenAICompatible.Dimensions.ValueInt64()

		modelName := new(string)
		if !r.Configuration.Embedding.OpenAICompatible.ModelName.IsUnknown() && !r.Configuration.Embedding.OpenAICompatible.ModelName.IsNull() {
			*modelName = r.Configuration.Embedding.OpenAICompatible.ModelName.ValueString()
		} else {
			modelName = nil
		}
		openAICompatible = &shared.OpenAICompatible{
			APIKey:     apiKey,
			BaseURL:    baseURL,
			Dimensions: dimensions,
			ModelName:  modelName,
		}
	}
	if openAICompatible != nil {
		embedding = shared.Embedding{
			OpenAICompatible: openAICompatible,
		}
	}
	var astraDbAppToken string
	astraDbAppToken = r.Configuration.Indexing.AstraDbAppToken.ValueString()

	var astraDbEndpoint string
	astraDbEndpoint = r.Configuration.Indexing.AstraDbEndpoint.ValueString()

	var astraDbKeyspace string
	astraDbKeyspace = r.Configuration.Indexing.AstraDbKeyspace.ValueString()

	var collection string
	collection = r.Configuration.Indexing.Collection.ValueString()

	indexing := shared.Indexing{
		AstraDbAppToken: astraDbAppToken,
		AstraDbEndpoint: astraDbEndpoint,
		AstraDbKeyspace: astraDbKeyspace,
		Collection:      collection,
	}
	omitRawText := new(bool)
	if !r.Configuration.OmitRawText.IsUnknown() && !r.Configuration.OmitRawText.IsNull() {
		*omitRawText = r.Configuration.OmitRawText.ValueBool()
	} else {
		omitRawText = nil
	}
	chunkOverlap := new(int64)
	if !r.Configuration.Processing.ChunkOverlap.IsUnknown() && !r.Configuration.Processing.ChunkOverlap.IsNull() {
		*chunkOverlap = r.Configuration.Processing.ChunkOverlap.ValueInt64()
	} else {
		chunkOverlap = nil
	}
	var chunkSize int64
	chunkSize = r.Configuration.Processing.ChunkSize.ValueInt64()

	var fieldNameMappings []shared.FieldNameMappingConfigModel = []shared.FieldNameMappingConfigModel{}
	for _, fieldNameMappingsItem := range r.Configuration.Processing.FieldNameMappings {
		var fromField string
		fromField = fieldNameMappingsItem.FromField.ValueString()

		var toField string
		toField = fieldNameMappingsItem.ToField.ValueString()

		fieldNameMappings = append(fieldNameMappings, shared.FieldNameMappingConfigModel{
			FromField: fromField,
			ToField:   toField,
		})
	}
	var metadataFields []string = []string{}
	for _, metadataFieldsItem := range r.Configuration.Processing.MetadataFields {
		metadataFields = append(metadataFields, metadataFieldsItem.ValueString())
	}
	var textFields []string = []string{}
	for _, textFieldsItem := range r.Configuration.Processing.TextFields {
		textFields = append(textFields, textFieldsItem.ValueString())
	}
	var textSplitter *shared.TextSplitter
	if r.Configuration.Processing.TextSplitter != nil {
		var bySeparator *shared.BySeparator
		if r.Configuration.Processing.TextSplitter.BySeparator != nil {
			keepSeparator := new(bool)
			if !r.Configuration.Processing.TextSplitter.BySeparator.KeepSeparator.IsUnknown() && !r.Configuration.Processing.TextSplitter.BySeparator.KeepSeparator.IsNull() {
				*keepSeparator = r.Configuration.Processing.TextSplitter.BySeparator.KeepSeparator.ValueBool()
			} else {
				keepSeparator = nil
			}
			var separators []string = []string{}
			for _, separatorsItem := range r.Configuration.Processing.TextSplitter.BySeparator.Separators {
				separators = append(separators, separatorsItem.ValueString())
			}
			bySeparator = &shared.BySeparator{
				KeepSeparator: keepSeparator,
				Separators:    separators,
			}
		}
		if bySeparator != nil {
			textSplitter = &shared.TextSplitter{
				BySeparator: bySeparator,
			}
		}
		var byMarkdownHeader *shared.ByMarkdownHeader
		if r.Configuration.Processing.TextSplitter.ByMarkdownHeader != nil {
			splitLevel := new(int64)
			if !r.Configuration.Processing.TextSplitter.ByMarkdownHeader.SplitLevel.IsUnknown() && !r.Configuration.Processing.TextSplitter.ByMarkdownHeader.SplitLevel.IsNull() {
				*splitLevel = r.Configuration.Processing.TextSplitter.ByMarkdownHeader.SplitLevel.ValueInt64()
			} else {
				splitLevel = nil
			}
			byMarkdownHeader = &shared.ByMarkdownHeader{
				SplitLevel: splitLevel,
			}
		}
		if byMarkdownHeader != nil {
			textSplitter = &shared.TextSplitter{
				ByMarkdownHeader: byMarkdownHeader,
			}
		}
		var byProgrammingLanguage *shared.ByProgrammingLanguage
		if r.Configuration.Processing.TextSplitter.ByProgrammingLanguage != nil {
			language := shared.DestinationAstraLanguage(r.Configuration.Processing.TextSplitter.ByProgrammingLanguage.Language.ValueString())
			byProgrammingLanguage = &shared.ByProgrammingLanguage{
				Language: language,
			}
		}
		if byProgrammingLanguage != nil {
			textSplitter = &shared.TextSplitter{
				ByProgrammingLanguage: byProgrammingLanguage,
			}
		}
	}
	processing := shared.ProcessingConfigModel{
		ChunkOverlap:      chunkOverlap,
		ChunkSize:         chunkSize,
		FieldNameMappings: fieldNameMappings,
		MetadataFields:    metadataFields,
		TextFields:        textFields,
		TextSplitter:      textSplitter,
	}
	configuration := shared.DestinationAstra{
		Embedding:   embedding,
		Indexing:    indexing,
		OmitRawText: omitRawText,
		Processing:  processing,
	}
	out := shared.DestinationAstraCreateRequest{
		Name:          name,
		DefinitionID:  definitionID,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
	}
	return &out
}

func (r *DestinationAstraResourceModel) RefreshFromSharedDestinationResponse(resp *shared.DestinationResponse) {
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

func (r *DestinationAstraResourceModel) ToSharedDestinationAstraPutRequest() *shared.DestinationAstraPutRequest {
	var name string
	name = r.Name.ValueString()

	var workspaceID string
	workspaceID = r.WorkspaceID.ValueString()

	var embedding shared.DestinationAstraUpdateEmbedding
	var destinationAstraUpdateOpenAI *shared.DestinationAstraUpdateOpenAI
	if r.Configuration.Embedding.OpenAI != nil {
		var openaiKey string
		openaiKey = r.Configuration.Embedding.OpenAI.OpenaiKey.ValueString()

		destinationAstraUpdateOpenAI = &shared.DestinationAstraUpdateOpenAI{
			OpenaiKey: openaiKey,
		}
	}
	if destinationAstraUpdateOpenAI != nil {
		embedding = shared.DestinationAstraUpdateEmbedding{
			DestinationAstraUpdateOpenAI: destinationAstraUpdateOpenAI,
		}
	}
	var destinationAstraUpdateCohere *shared.DestinationAstraUpdateCohere
	if r.Configuration.Embedding.Cohere != nil {
		var cohereKey string
		cohereKey = r.Configuration.Embedding.Cohere.CohereKey.ValueString()

		destinationAstraUpdateCohere = &shared.DestinationAstraUpdateCohere{
			CohereKey: cohereKey,
		}
	}
	if destinationAstraUpdateCohere != nil {
		embedding = shared.DestinationAstraUpdateEmbedding{
			DestinationAstraUpdateCohere: destinationAstraUpdateCohere,
		}
	}
	var destinationAstraUpdateFake *shared.DestinationAstraUpdateFake
	if r.Configuration.Embedding.Fake != nil {
		destinationAstraUpdateFake = &shared.DestinationAstraUpdateFake{}
	}
	if destinationAstraUpdateFake != nil {
		embedding = shared.DestinationAstraUpdateEmbedding{
			DestinationAstraUpdateFake: destinationAstraUpdateFake,
		}
	}
	var destinationAstraUpdateAzureOpenAI *shared.DestinationAstraUpdateAzureOpenAI
	if r.Configuration.Embedding.AzureOpenAI != nil {
		var apiBase string
		apiBase = r.Configuration.Embedding.AzureOpenAI.APIBase.ValueString()

		var deployment string
		deployment = r.Configuration.Embedding.AzureOpenAI.Deployment.ValueString()

		var openaiKey1 string
		openaiKey1 = r.Configuration.Embedding.AzureOpenAI.OpenaiKey.ValueString()

		destinationAstraUpdateAzureOpenAI = &shared.DestinationAstraUpdateAzureOpenAI{
			APIBase:    apiBase,
			Deployment: deployment,
			OpenaiKey:  openaiKey1,
		}
	}
	if destinationAstraUpdateAzureOpenAI != nil {
		embedding = shared.DestinationAstraUpdateEmbedding{
			DestinationAstraUpdateAzureOpenAI: destinationAstraUpdateAzureOpenAI,
		}
	}
	var destinationAstraUpdateOpenAICompatible *shared.DestinationAstraUpdateOpenAICompatible
	if r.Configuration.Embedding.OpenAICompatible != nil {
		apiKey := new(string)
		if !r.Configuration.Embedding.OpenAICompatible.APIKey.IsUnknown() && !r.Configuration.Embedding.OpenAICompatible.APIKey.IsNull() {
			*apiKey = r.Configuration.Embedding.OpenAICompatible.APIKey.ValueString()
		} else {
			apiKey = nil
		}
		var baseURL string
		baseURL = r.Configuration.Embedding.OpenAICompatible.BaseURL.ValueString()

		var dimensions int64
		dimensions = r.Configuration.Embedding.OpenAICompatible.Dimensions.ValueInt64()

		modelName := new(string)
		if !r.Configuration.Embedding.OpenAICompatible.ModelName.IsUnknown() && !r.Configuration.Embedding.OpenAICompatible.ModelName.IsNull() {
			*modelName = r.Configuration.Embedding.OpenAICompatible.ModelName.ValueString()
		} else {
			modelName = nil
		}
		destinationAstraUpdateOpenAICompatible = &shared.DestinationAstraUpdateOpenAICompatible{
			APIKey:     apiKey,
			BaseURL:    baseURL,
			Dimensions: dimensions,
			ModelName:  modelName,
		}
	}
	if destinationAstraUpdateOpenAICompatible != nil {
		embedding = shared.DestinationAstraUpdateEmbedding{
			DestinationAstraUpdateOpenAICompatible: destinationAstraUpdateOpenAICompatible,
		}
	}
	var astraDbAppToken string
	astraDbAppToken = r.Configuration.Indexing.AstraDbAppToken.ValueString()

	var astraDbEndpoint string
	astraDbEndpoint = r.Configuration.Indexing.AstraDbEndpoint.ValueString()

	var astraDbKeyspace string
	astraDbKeyspace = r.Configuration.Indexing.AstraDbKeyspace.ValueString()

	var collection string
	collection = r.Configuration.Indexing.Collection.ValueString()

	indexing := shared.DestinationAstraUpdateIndexing{
		AstraDbAppToken: astraDbAppToken,
		AstraDbEndpoint: astraDbEndpoint,
		AstraDbKeyspace: astraDbKeyspace,
		Collection:      collection,
	}
	omitRawText := new(bool)
	if !r.Configuration.OmitRawText.IsUnknown() && !r.Configuration.OmitRawText.IsNull() {
		*omitRawText = r.Configuration.OmitRawText.ValueBool()
	} else {
		omitRawText = nil
	}
	chunkOverlap := new(int64)
	if !r.Configuration.Processing.ChunkOverlap.IsUnknown() && !r.Configuration.Processing.ChunkOverlap.IsNull() {
		*chunkOverlap = r.Configuration.Processing.ChunkOverlap.ValueInt64()
	} else {
		chunkOverlap = nil
	}
	var chunkSize int64
	chunkSize = r.Configuration.Processing.ChunkSize.ValueInt64()

	var fieldNameMappings []shared.DestinationAstraUpdateFieldNameMappingConfigModel = []shared.DestinationAstraUpdateFieldNameMappingConfigModel{}
	for _, fieldNameMappingsItem := range r.Configuration.Processing.FieldNameMappings {
		var fromField string
		fromField = fieldNameMappingsItem.FromField.ValueString()

		var toField string
		toField = fieldNameMappingsItem.ToField.ValueString()

		fieldNameMappings = append(fieldNameMappings, shared.DestinationAstraUpdateFieldNameMappingConfigModel{
			FromField: fromField,
			ToField:   toField,
		})
	}
	var metadataFields []string = []string{}
	for _, metadataFieldsItem := range r.Configuration.Processing.MetadataFields {
		metadataFields = append(metadataFields, metadataFieldsItem.ValueString())
	}
	var textFields []string = []string{}
	for _, textFieldsItem := range r.Configuration.Processing.TextFields {
		textFields = append(textFields, textFieldsItem.ValueString())
	}
	var textSplitter *shared.DestinationAstraUpdateTextSplitter
	if r.Configuration.Processing.TextSplitter != nil {
		var destinationAstraUpdateBySeparator *shared.DestinationAstraUpdateBySeparator
		if r.Configuration.Processing.TextSplitter.BySeparator != nil {
			keepSeparator := new(bool)
			if !r.Configuration.Processing.TextSplitter.BySeparator.KeepSeparator.IsUnknown() && !r.Configuration.Processing.TextSplitter.BySeparator.KeepSeparator.IsNull() {
				*keepSeparator = r.Configuration.Processing.TextSplitter.BySeparator.KeepSeparator.ValueBool()
			} else {
				keepSeparator = nil
			}
			var separators []string = []string{}
			for _, separatorsItem := range r.Configuration.Processing.TextSplitter.BySeparator.Separators {
				separators = append(separators, separatorsItem.ValueString())
			}
			destinationAstraUpdateBySeparator = &shared.DestinationAstraUpdateBySeparator{
				KeepSeparator: keepSeparator,
				Separators:    separators,
			}
		}
		if destinationAstraUpdateBySeparator != nil {
			textSplitter = &shared.DestinationAstraUpdateTextSplitter{
				DestinationAstraUpdateBySeparator: destinationAstraUpdateBySeparator,
			}
		}
		var destinationAstraUpdateByMarkdownHeader *shared.DestinationAstraUpdateByMarkdownHeader
		if r.Configuration.Processing.TextSplitter.ByMarkdownHeader != nil {
			splitLevel := new(int64)
			if !r.Configuration.Processing.TextSplitter.ByMarkdownHeader.SplitLevel.IsUnknown() && !r.Configuration.Processing.TextSplitter.ByMarkdownHeader.SplitLevel.IsNull() {
				*splitLevel = r.Configuration.Processing.TextSplitter.ByMarkdownHeader.SplitLevel.ValueInt64()
			} else {
				splitLevel = nil
			}
			destinationAstraUpdateByMarkdownHeader = &shared.DestinationAstraUpdateByMarkdownHeader{
				SplitLevel: splitLevel,
			}
		}
		if destinationAstraUpdateByMarkdownHeader != nil {
			textSplitter = &shared.DestinationAstraUpdateTextSplitter{
				DestinationAstraUpdateByMarkdownHeader: destinationAstraUpdateByMarkdownHeader,
			}
		}
		var destinationAstraUpdateByProgrammingLanguage *shared.DestinationAstraUpdateByProgrammingLanguage
		if r.Configuration.Processing.TextSplitter.ByProgrammingLanguage != nil {
			language := shared.DestinationAstraUpdateLanguage(r.Configuration.Processing.TextSplitter.ByProgrammingLanguage.Language.ValueString())
			destinationAstraUpdateByProgrammingLanguage = &shared.DestinationAstraUpdateByProgrammingLanguage{
				Language: language,
			}
		}
		if destinationAstraUpdateByProgrammingLanguage != nil {
			textSplitter = &shared.DestinationAstraUpdateTextSplitter{
				DestinationAstraUpdateByProgrammingLanguage: destinationAstraUpdateByProgrammingLanguage,
			}
		}
	}
	processing := shared.DestinationAstraUpdateProcessingConfigModel{
		ChunkOverlap:      chunkOverlap,
		ChunkSize:         chunkSize,
		FieldNameMappings: fieldNameMappings,
		MetadataFields:    metadataFields,
		TextFields:        textFields,
		TextSplitter:      textSplitter,
	}
	configuration := shared.DestinationAstraUpdate{
		Embedding:   embedding,
		Indexing:    indexing,
		OmitRawText: omitRawText,
		Processing:  processing,
	}
	out := shared.DestinationAstraPutRequest{
		Name:          name,
		WorkspaceID:   workspaceID,
		Configuration: configuration,
	}
	return &out
}
