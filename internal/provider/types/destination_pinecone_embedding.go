// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

type DestinationPineconeEmbedding struct {
	AzureOpenAI      *DestinationPineconeAzureOpenAI      `queryParam:"inline" tfsdk:"azure_open_ai" tfPlanOnly:"true"`
	Cohere           *DestinationPineconeCohere           `queryParam:"inline" tfsdk:"cohere" tfPlanOnly:"true"`
	Fake             *DestinationPineconeFake             `queryParam:"inline" tfsdk:"fake" tfPlanOnly:"true"`
	OpenAI           *DestinationPineconeOpenAI           `queryParam:"inline" tfsdk:"open_ai" tfPlanOnly:"true"`
	OpenAICompatible *DestinationPineconeOpenAICompatible `queryParam:"inline" tfsdk:"open_ai_compatible" tfPlanOnly:"true"`
}
