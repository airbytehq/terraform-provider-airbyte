// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

type Embedding struct {
	AzureOpenAI      *AzureOpenAI      `queryParam:"inline" tfsdk:"azure_open_ai" tfPlanOnly:"true"`
	Cohere           *Cohere           `queryParam:"inline" tfsdk:"cohere" tfPlanOnly:"true"`
	Fake             *Fake             `queryParam:"inline" tfsdk:"fake" tfPlanOnly:"true"`
	OpenAI           *OpenAI           `queryParam:"inline" tfsdk:"open_ai" tfPlanOnly:"true"`
	OpenAICompatible *OpenAICompatible `queryParam:"inline" tfsdk:"open_ai_compatible" tfPlanOnly:"true"`
}
