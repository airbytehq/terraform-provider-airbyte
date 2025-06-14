// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"errors"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

type DestinationPineconeSchemasEmbeddingEmbedding5Mode string

const (
	DestinationPineconeSchemasEmbeddingEmbedding5ModeOpenaiCompatible DestinationPineconeSchemasEmbeddingEmbedding5Mode = "openai_compatible"
)

func (e DestinationPineconeSchemasEmbeddingEmbedding5Mode) ToPointer() *DestinationPineconeSchemasEmbeddingEmbedding5Mode {
	return &e
}
func (e *DestinationPineconeSchemasEmbeddingEmbedding5Mode) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "openai_compatible":
		*e = DestinationPineconeSchemasEmbeddingEmbedding5Mode(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationPineconeSchemasEmbeddingEmbedding5Mode: %v", v)
	}
}

// DestinationPineconeOpenAICompatible - Use a service that's compatible with the OpenAI API to embed text.
type DestinationPineconeOpenAICompatible struct {
	APIKey *string `default:"" json:"api_key"`
	// The base URL for your OpenAI-compatible service
	BaseURL string `json:"base_url"`
	// The number of dimensions the embedding model is generating
	Dimensions int64                                              `json:"dimensions"`
	mode       *DestinationPineconeSchemasEmbeddingEmbedding5Mode `const:"openai_compatible" json:"mode"`
	// The name of the model to use for embedding
	ModelName *string `default:"text-embedding-ada-002" json:"model_name"`
}

func (d DestinationPineconeOpenAICompatible) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationPineconeOpenAICompatible) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *DestinationPineconeOpenAICompatible) GetAPIKey() *string {
	if o == nil {
		return nil
	}
	return o.APIKey
}

func (o *DestinationPineconeOpenAICompatible) GetBaseURL() string {
	if o == nil {
		return ""
	}
	return o.BaseURL
}

func (o *DestinationPineconeOpenAICompatible) GetDimensions() int64 {
	if o == nil {
		return 0
	}
	return o.Dimensions
}

func (o *DestinationPineconeOpenAICompatible) GetMode() *DestinationPineconeSchemasEmbeddingEmbedding5Mode {
	return DestinationPineconeSchemasEmbeddingEmbedding5ModeOpenaiCompatible.ToPointer()
}

func (o *DestinationPineconeOpenAICompatible) GetModelName() *string {
	if o == nil {
		return nil
	}
	return o.ModelName
}

type DestinationPineconeSchemasEmbeddingEmbeddingMode string

const (
	DestinationPineconeSchemasEmbeddingEmbeddingModeAzureOpenai DestinationPineconeSchemasEmbeddingEmbeddingMode = "azure_openai"
)

func (e DestinationPineconeSchemasEmbeddingEmbeddingMode) ToPointer() *DestinationPineconeSchemasEmbeddingEmbeddingMode {
	return &e
}
func (e *DestinationPineconeSchemasEmbeddingEmbeddingMode) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "azure_openai":
		*e = DestinationPineconeSchemasEmbeddingEmbeddingMode(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationPineconeSchemasEmbeddingEmbeddingMode: %v", v)
	}
}

// DestinationPineconeAzureOpenAI - Use the Azure-hosted OpenAI API to embed text. This option is using the text-embedding-ada-002 model with 1536 embedding dimensions.
type DestinationPineconeAzureOpenAI struct {
	// The base URL for your Azure OpenAI resource.  You can find this in the Azure portal under your Azure OpenAI resource
	APIBase string `json:"api_base"`
	// The deployment for your Azure OpenAI resource.  You can find this in the Azure portal under your Azure OpenAI resource
	Deployment string                                            `json:"deployment"`
	mode       *DestinationPineconeSchemasEmbeddingEmbeddingMode `const:"azure_openai" json:"mode"`
	// The API key for your Azure OpenAI resource.  You can find this in the Azure portal under your Azure OpenAI resource
	OpenaiKey string `json:"openai_key"`
}

func (d DestinationPineconeAzureOpenAI) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationPineconeAzureOpenAI) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *DestinationPineconeAzureOpenAI) GetAPIBase() string {
	if o == nil {
		return ""
	}
	return o.APIBase
}

func (o *DestinationPineconeAzureOpenAI) GetDeployment() string {
	if o == nil {
		return ""
	}
	return o.Deployment
}

func (o *DestinationPineconeAzureOpenAI) GetMode() *DestinationPineconeSchemasEmbeddingEmbeddingMode {
	return DestinationPineconeSchemasEmbeddingEmbeddingModeAzureOpenai.ToPointer()
}

func (o *DestinationPineconeAzureOpenAI) GetOpenaiKey() string {
	if o == nil {
		return ""
	}
	return o.OpenaiKey
}

type DestinationPineconeSchemasEmbeddingMode string

const (
	DestinationPineconeSchemasEmbeddingModeFake DestinationPineconeSchemasEmbeddingMode = "fake"
)

func (e DestinationPineconeSchemasEmbeddingMode) ToPointer() *DestinationPineconeSchemasEmbeddingMode {
	return &e
}
func (e *DestinationPineconeSchemasEmbeddingMode) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "fake":
		*e = DestinationPineconeSchemasEmbeddingMode(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationPineconeSchemasEmbeddingMode: %v", v)
	}
}

// DestinationPineconeFake - Use a fake embedding made out of random vectors with 1536 embedding dimensions. This is useful for testing the data pipeline without incurring any costs.
type DestinationPineconeFake struct {
	mode *DestinationPineconeSchemasEmbeddingMode `const:"fake" json:"mode"`
}

func (d DestinationPineconeFake) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationPineconeFake) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *DestinationPineconeFake) GetMode() *DestinationPineconeSchemasEmbeddingMode {
	return DestinationPineconeSchemasEmbeddingModeFake.ToPointer()
}

type DestinationPineconeSchemasMode string

const (
	DestinationPineconeSchemasModeCohere DestinationPineconeSchemasMode = "cohere"
)

func (e DestinationPineconeSchemasMode) ToPointer() *DestinationPineconeSchemasMode {
	return &e
}
func (e *DestinationPineconeSchemasMode) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "cohere":
		*e = DestinationPineconeSchemasMode(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationPineconeSchemasMode: %v", v)
	}
}

// DestinationPineconeCohere - Use the Cohere API to embed text.
type DestinationPineconeCohere struct {
	CohereKey string                          `json:"cohere_key"`
	mode      *DestinationPineconeSchemasMode `const:"cohere" json:"mode"`
}

func (d DestinationPineconeCohere) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationPineconeCohere) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *DestinationPineconeCohere) GetCohereKey() string {
	if o == nil {
		return ""
	}
	return o.CohereKey
}

func (o *DestinationPineconeCohere) GetMode() *DestinationPineconeSchemasMode {
	return DestinationPineconeSchemasModeCohere.ToPointer()
}

type DestinationPineconeMode string

const (
	DestinationPineconeModeOpenai DestinationPineconeMode = "openai"
)

func (e DestinationPineconeMode) ToPointer() *DestinationPineconeMode {
	return &e
}
func (e *DestinationPineconeMode) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "openai":
		*e = DestinationPineconeMode(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationPineconeMode: %v", v)
	}
}

// DestinationPineconeOpenAI - Use the OpenAI API to embed text. This option is using the text-embedding-ada-002 model with 1536 embedding dimensions.
type DestinationPineconeOpenAI struct {
	mode      *DestinationPineconeMode `const:"openai" json:"mode"`
	OpenaiKey string                   `json:"openai_key"`
}

func (d DestinationPineconeOpenAI) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationPineconeOpenAI) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *DestinationPineconeOpenAI) GetMode() *DestinationPineconeMode {
	return DestinationPineconeModeOpenai.ToPointer()
}

func (o *DestinationPineconeOpenAI) GetOpenaiKey() string {
	if o == nil {
		return ""
	}
	return o.OpenaiKey
}

type DestinationPineconeEmbeddingType string

const (
	DestinationPineconeEmbeddingTypeDestinationPineconeOpenAI           DestinationPineconeEmbeddingType = "destination-pinecone_OpenAI"
	DestinationPineconeEmbeddingTypeDestinationPineconeCohere           DestinationPineconeEmbeddingType = "destination-pinecone_Cohere"
	DestinationPineconeEmbeddingTypeDestinationPineconeFake             DestinationPineconeEmbeddingType = "destination-pinecone_Fake"
	DestinationPineconeEmbeddingTypeDestinationPineconeAzureOpenAI      DestinationPineconeEmbeddingType = "destination-pinecone_Azure OpenAI"
	DestinationPineconeEmbeddingTypeDestinationPineconeOpenAICompatible DestinationPineconeEmbeddingType = "destination-pinecone_OpenAI-compatible"
)

// DestinationPineconeEmbedding - Embedding configuration
type DestinationPineconeEmbedding struct {
	DestinationPineconeOpenAI           *DestinationPineconeOpenAI           `queryParam:"inline"`
	DestinationPineconeCohere           *DestinationPineconeCohere           `queryParam:"inline"`
	DestinationPineconeFake             *DestinationPineconeFake             `queryParam:"inline"`
	DestinationPineconeAzureOpenAI      *DestinationPineconeAzureOpenAI      `queryParam:"inline"`
	DestinationPineconeOpenAICompatible *DestinationPineconeOpenAICompatible `queryParam:"inline"`

	Type DestinationPineconeEmbeddingType
}

func CreateDestinationPineconeEmbeddingDestinationPineconeOpenAI(destinationPineconeOpenAI DestinationPineconeOpenAI) DestinationPineconeEmbedding {
	typ := DestinationPineconeEmbeddingTypeDestinationPineconeOpenAI

	return DestinationPineconeEmbedding{
		DestinationPineconeOpenAI: &destinationPineconeOpenAI,
		Type:                      typ,
	}
}

func CreateDestinationPineconeEmbeddingDestinationPineconeCohere(destinationPineconeCohere DestinationPineconeCohere) DestinationPineconeEmbedding {
	typ := DestinationPineconeEmbeddingTypeDestinationPineconeCohere

	return DestinationPineconeEmbedding{
		DestinationPineconeCohere: &destinationPineconeCohere,
		Type:                      typ,
	}
}

func CreateDestinationPineconeEmbeddingDestinationPineconeFake(destinationPineconeFake DestinationPineconeFake) DestinationPineconeEmbedding {
	typ := DestinationPineconeEmbeddingTypeDestinationPineconeFake

	return DestinationPineconeEmbedding{
		DestinationPineconeFake: &destinationPineconeFake,
		Type:                    typ,
	}
}

func CreateDestinationPineconeEmbeddingDestinationPineconeAzureOpenAI(destinationPineconeAzureOpenAI DestinationPineconeAzureOpenAI) DestinationPineconeEmbedding {
	typ := DestinationPineconeEmbeddingTypeDestinationPineconeAzureOpenAI

	return DestinationPineconeEmbedding{
		DestinationPineconeAzureOpenAI: &destinationPineconeAzureOpenAI,
		Type:                           typ,
	}
}

func CreateDestinationPineconeEmbeddingDestinationPineconeOpenAICompatible(destinationPineconeOpenAICompatible DestinationPineconeOpenAICompatible) DestinationPineconeEmbedding {
	typ := DestinationPineconeEmbeddingTypeDestinationPineconeOpenAICompatible

	return DestinationPineconeEmbedding{
		DestinationPineconeOpenAICompatible: &destinationPineconeOpenAICompatible,
		Type:                                typ,
	}
}

func (u *DestinationPineconeEmbedding) UnmarshalJSON(data []byte) error {

	var destinationPineconeFake DestinationPineconeFake = DestinationPineconeFake{}
	if err := utils.UnmarshalJSON(data, &destinationPineconeFake, "", true, true); err == nil {
		u.DestinationPineconeFake = &destinationPineconeFake
		u.Type = DestinationPineconeEmbeddingTypeDestinationPineconeFake
		return nil
	}

	var destinationPineconeOpenAI DestinationPineconeOpenAI = DestinationPineconeOpenAI{}
	if err := utils.UnmarshalJSON(data, &destinationPineconeOpenAI, "", true, true); err == nil {
		u.DestinationPineconeOpenAI = &destinationPineconeOpenAI
		u.Type = DestinationPineconeEmbeddingTypeDestinationPineconeOpenAI
		return nil
	}

	var destinationPineconeCohere DestinationPineconeCohere = DestinationPineconeCohere{}
	if err := utils.UnmarshalJSON(data, &destinationPineconeCohere, "", true, true); err == nil {
		u.DestinationPineconeCohere = &destinationPineconeCohere
		u.Type = DestinationPineconeEmbeddingTypeDestinationPineconeCohere
		return nil
	}

	var destinationPineconeAzureOpenAI DestinationPineconeAzureOpenAI = DestinationPineconeAzureOpenAI{}
	if err := utils.UnmarshalJSON(data, &destinationPineconeAzureOpenAI, "", true, true); err == nil {
		u.DestinationPineconeAzureOpenAI = &destinationPineconeAzureOpenAI
		u.Type = DestinationPineconeEmbeddingTypeDestinationPineconeAzureOpenAI
		return nil
	}

	var destinationPineconeOpenAICompatible DestinationPineconeOpenAICompatible = DestinationPineconeOpenAICompatible{}
	if err := utils.UnmarshalJSON(data, &destinationPineconeOpenAICompatible, "", true, true); err == nil {
		u.DestinationPineconeOpenAICompatible = &destinationPineconeOpenAICompatible
		u.Type = DestinationPineconeEmbeddingTypeDestinationPineconeOpenAICompatible
		return nil
	}

	return fmt.Errorf("could not unmarshal `%s` into any supported union types for DestinationPineconeEmbedding", string(data))
}

func (u DestinationPineconeEmbedding) MarshalJSON() ([]byte, error) {
	if u.DestinationPineconeOpenAI != nil {
		return utils.MarshalJSON(u.DestinationPineconeOpenAI, "", true)
	}

	if u.DestinationPineconeCohere != nil {
		return utils.MarshalJSON(u.DestinationPineconeCohere, "", true)
	}

	if u.DestinationPineconeFake != nil {
		return utils.MarshalJSON(u.DestinationPineconeFake, "", true)
	}

	if u.DestinationPineconeAzureOpenAI != nil {
		return utils.MarshalJSON(u.DestinationPineconeAzureOpenAI, "", true)
	}

	if u.DestinationPineconeOpenAICompatible != nil {
		return utils.MarshalJSON(u.DestinationPineconeOpenAICompatible, "", true)
	}

	return nil, errors.New("could not marshal union type DestinationPineconeEmbedding: all fields are null")
}

// DestinationPineconeIndexing - Pinecone is a popular vector store that can be used to store and retrieve embeddings.
type DestinationPineconeIndexing struct {
	// Pinecone index in your project to load data into
	Index string `json:"index"`
	// Pinecone Cloud environment to use
	PineconeEnvironment string `json:"pinecone_environment"`
	// The Pinecone API key to use matching the environment (copy from Pinecone console)
	PineconeKey string `json:"pinecone_key"`
}

func (o *DestinationPineconeIndexing) GetIndex() string {
	if o == nil {
		return ""
	}
	return o.Index
}

func (o *DestinationPineconeIndexing) GetPineconeEnvironment() string {
	if o == nil {
		return ""
	}
	return o.PineconeEnvironment
}

func (o *DestinationPineconeIndexing) GetPineconeKey() string {
	if o == nil {
		return ""
	}
	return o.PineconeKey
}

type DestinationPineconeFieldNameMappingConfigModel struct {
	// The field name in the source
	FromField string `json:"from_field"`
	// The field name to use in the destination
	ToField string `json:"to_field"`
}

func (o *DestinationPineconeFieldNameMappingConfigModel) GetFromField() string {
	if o == nil {
		return ""
	}
	return o.FromField
}

func (o *DestinationPineconeFieldNameMappingConfigModel) GetToField() string {
	if o == nil {
		return ""
	}
	return o.ToField
}

// DestinationPineconeLanguage - Split code in suitable places based on the programming language
type DestinationPineconeLanguage string

const (
	DestinationPineconeLanguageCpp      DestinationPineconeLanguage = "cpp"
	DestinationPineconeLanguageGo       DestinationPineconeLanguage = "go"
	DestinationPineconeLanguageJava     DestinationPineconeLanguage = "java"
	DestinationPineconeLanguageJs       DestinationPineconeLanguage = "js"
	DestinationPineconeLanguagePhp      DestinationPineconeLanguage = "php"
	DestinationPineconeLanguageProto    DestinationPineconeLanguage = "proto"
	DestinationPineconeLanguagePython   DestinationPineconeLanguage = "python"
	DestinationPineconeLanguageRst      DestinationPineconeLanguage = "rst"
	DestinationPineconeLanguageRuby     DestinationPineconeLanguage = "ruby"
	DestinationPineconeLanguageRust     DestinationPineconeLanguage = "rust"
	DestinationPineconeLanguageScala    DestinationPineconeLanguage = "scala"
	DestinationPineconeLanguageSwift    DestinationPineconeLanguage = "swift"
	DestinationPineconeLanguageMarkdown DestinationPineconeLanguage = "markdown"
	DestinationPineconeLanguageLatex    DestinationPineconeLanguage = "latex"
	DestinationPineconeLanguageHTML     DestinationPineconeLanguage = "html"
	DestinationPineconeLanguageSol      DestinationPineconeLanguage = "sol"
)

func (e DestinationPineconeLanguage) ToPointer() *DestinationPineconeLanguage {
	return &e
}
func (e *DestinationPineconeLanguage) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "cpp":
		fallthrough
	case "go":
		fallthrough
	case "java":
		fallthrough
	case "js":
		fallthrough
	case "php":
		fallthrough
	case "proto":
		fallthrough
	case "python":
		fallthrough
	case "rst":
		fallthrough
	case "ruby":
		fallthrough
	case "rust":
		fallthrough
	case "scala":
		fallthrough
	case "swift":
		fallthrough
	case "markdown":
		fallthrough
	case "latex":
		fallthrough
	case "html":
		fallthrough
	case "sol":
		*e = DestinationPineconeLanguage(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationPineconeLanguage: %v", v)
	}
}

type DestinationPineconeSchemasProcessingTextSplitterTextSplitterMode string

const (
	DestinationPineconeSchemasProcessingTextSplitterTextSplitterModeCode DestinationPineconeSchemasProcessingTextSplitterTextSplitterMode = "code"
)

func (e DestinationPineconeSchemasProcessingTextSplitterTextSplitterMode) ToPointer() *DestinationPineconeSchemasProcessingTextSplitterTextSplitterMode {
	return &e
}
func (e *DestinationPineconeSchemasProcessingTextSplitterTextSplitterMode) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "code":
		*e = DestinationPineconeSchemasProcessingTextSplitterTextSplitterMode(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationPineconeSchemasProcessingTextSplitterTextSplitterMode: %v", v)
	}
}

// DestinationPineconeByProgrammingLanguage - Split the text by suitable delimiters based on the programming language. This is useful for splitting code into chunks.
type DestinationPineconeByProgrammingLanguage struct {
	// Split code in suitable places based on the programming language
	Language DestinationPineconeLanguage                                       `json:"language"`
	mode     *DestinationPineconeSchemasProcessingTextSplitterTextSplitterMode `const:"code" json:"mode"`
}

func (d DestinationPineconeByProgrammingLanguage) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationPineconeByProgrammingLanguage) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *DestinationPineconeByProgrammingLanguage) GetLanguage() DestinationPineconeLanguage {
	if o == nil {
		return DestinationPineconeLanguage("")
	}
	return o.Language
}

func (o *DestinationPineconeByProgrammingLanguage) GetMode() *DestinationPineconeSchemasProcessingTextSplitterTextSplitterMode {
	return DestinationPineconeSchemasProcessingTextSplitterTextSplitterModeCode.ToPointer()
}

type DestinationPineconeSchemasProcessingTextSplitterMode string

const (
	DestinationPineconeSchemasProcessingTextSplitterModeMarkdown DestinationPineconeSchemasProcessingTextSplitterMode = "markdown"
)

func (e DestinationPineconeSchemasProcessingTextSplitterMode) ToPointer() *DestinationPineconeSchemasProcessingTextSplitterMode {
	return &e
}
func (e *DestinationPineconeSchemasProcessingTextSplitterMode) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "markdown":
		*e = DestinationPineconeSchemasProcessingTextSplitterMode(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationPineconeSchemasProcessingTextSplitterMode: %v", v)
	}
}

// DestinationPineconeByMarkdownHeader - Split the text by Markdown headers down to the specified header level. If the chunk size fits multiple sections, they will be combined into a single chunk.
type DestinationPineconeByMarkdownHeader struct {
	mode *DestinationPineconeSchemasProcessingTextSplitterMode `const:"markdown" json:"mode"`
	// Level of markdown headers to split text fields by. Headings down to the specified level will be used as split points
	SplitLevel *int64 `default:"1" json:"split_level"`
}

func (d DestinationPineconeByMarkdownHeader) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationPineconeByMarkdownHeader) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *DestinationPineconeByMarkdownHeader) GetMode() *DestinationPineconeSchemasProcessingTextSplitterMode {
	return DestinationPineconeSchemasProcessingTextSplitterModeMarkdown.ToPointer()
}

func (o *DestinationPineconeByMarkdownHeader) GetSplitLevel() *int64 {
	if o == nil {
		return nil
	}
	return o.SplitLevel
}

type DestinationPineconeSchemasProcessingMode string

const (
	DestinationPineconeSchemasProcessingModeSeparator DestinationPineconeSchemasProcessingMode = "separator"
)

func (e DestinationPineconeSchemasProcessingMode) ToPointer() *DestinationPineconeSchemasProcessingMode {
	return &e
}
func (e *DestinationPineconeSchemasProcessingMode) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "separator":
		*e = DestinationPineconeSchemasProcessingMode(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationPineconeSchemasProcessingMode: %v", v)
	}
}

// DestinationPineconeBySeparator - Split the text by the list of separators until the chunk size is reached, using the earlier mentioned separators where possible. This is useful for splitting text fields by paragraphs, sentences, words, etc.
type DestinationPineconeBySeparator struct {
	// Whether to keep the separator in the resulting chunks
	KeepSeparator *bool                                     `default:"false" json:"keep_separator"`
	mode          *DestinationPineconeSchemasProcessingMode `const:"separator" json:"mode"`
	// List of separator strings to split text fields by. The separator itself needs to be wrapped in double quotes, e.g. to split by the dot character, use ".". To split by a newline, use "\n".
	Separators []string `json:"separators,omitempty"`
}

func (d DestinationPineconeBySeparator) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationPineconeBySeparator) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *DestinationPineconeBySeparator) GetKeepSeparator() *bool {
	if o == nil {
		return nil
	}
	return o.KeepSeparator
}

func (o *DestinationPineconeBySeparator) GetMode() *DestinationPineconeSchemasProcessingMode {
	return DestinationPineconeSchemasProcessingModeSeparator.ToPointer()
}

func (o *DestinationPineconeBySeparator) GetSeparators() []string {
	if o == nil {
		return nil
	}
	return o.Separators
}

type DestinationPineconeTextSplitterType string

const (
	DestinationPineconeTextSplitterTypeDestinationPineconeBySeparator           DestinationPineconeTextSplitterType = "destination-pinecone_By Separator"
	DestinationPineconeTextSplitterTypeDestinationPineconeByMarkdownHeader      DestinationPineconeTextSplitterType = "destination-pinecone_By Markdown header"
	DestinationPineconeTextSplitterTypeDestinationPineconeByProgrammingLanguage DestinationPineconeTextSplitterType = "destination-pinecone_By Programming Language"
)

// DestinationPineconeTextSplitter - Split text fields into chunks based on the specified method.
type DestinationPineconeTextSplitter struct {
	DestinationPineconeBySeparator           *DestinationPineconeBySeparator           `queryParam:"inline"`
	DestinationPineconeByMarkdownHeader      *DestinationPineconeByMarkdownHeader      `queryParam:"inline"`
	DestinationPineconeByProgrammingLanguage *DestinationPineconeByProgrammingLanguage `queryParam:"inline"`

	Type DestinationPineconeTextSplitterType
}

func CreateDestinationPineconeTextSplitterDestinationPineconeBySeparator(destinationPineconeBySeparator DestinationPineconeBySeparator) DestinationPineconeTextSplitter {
	typ := DestinationPineconeTextSplitterTypeDestinationPineconeBySeparator

	return DestinationPineconeTextSplitter{
		DestinationPineconeBySeparator: &destinationPineconeBySeparator,
		Type:                           typ,
	}
}

func CreateDestinationPineconeTextSplitterDestinationPineconeByMarkdownHeader(destinationPineconeByMarkdownHeader DestinationPineconeByMarkdownHeader) DestinationPineconeTextSplitter {
	typ := DestinationPineconeTextSplitterTypeDestinationPineconeByMarkdownHeader

	return DestinationPineconeTextSplitter{
		DestinationPineconeByMarkdownHeader: &destinationPineconeByMarkdownHeader,
		Type:                                typ,
	}
}

func CreateDestinationPineconeTextSplitterDestinationPineconeByProgrammingLanguage(destinationPineconeByProgrammingLanguage DestinationPineconeByProgrammingLanguage) DestinationPineconeTextSplitter {
	typ := DestinationPineconeTextSplitterTypeDestinationPineconeByProgrammingLanguage

	return DestinationPineconeTextSplitter{
		DestinationPineconeByProgrammingLanguage: &destinationPineconeByProgrammingLanguage,
		Type:                                     typ,
	}
}

func (u *DestinationPineconeTextSplitter) UnmarshalJSON(data []byte) error {

	var destinationPineconeByMarkdownHeader DestinationPineconeByMarkdownHeader = DestinationPineconeByMarkdownHeader{}
	if err := utils.UnmarshalJSON(data, &destinationPineconeByMarkdownHeader, "", true, true); err == nil {
		u.DestinationPineconeByMarkdownHeader = &destinationPineconeByMarkdownHeader
		u.Type = DestinationPineconeTextSplitterTypeDestinationPineconeByMarkdownHeader
		return nil
	}

	var destinationPineconeByProgrammingLanguage DestinationPineconeByProgrammingLanguage = DestinationPineconeByProgrammingLanguage{}
	if err := utils.UnmarshalJSON(data, &destinationPineconeByProgrammingLanguage, "", true, true); err == nil {
		u.DestinationPineconeByProgrammingLanguage = &destinationPineconeByProgrammingLanguage
		u.Type = DestinationPineconeTextSplitterTypeDestinationPineconeByProgrammingLanguage
		return nil
	}

	var destinationPineconeBySeparator DestinationPineconeBySeparator = DestinationPineconeBySeparator{}
	if err := utils.UnmarshalJSON(data, &destinationPineconeBySeparator, "", true, true); err == nil {
		u.DestinationPineconeBySeparator = &destinationPineconeBySeparator
		u.Type = DestinationPineconeTextSplitterTypeDestinationPineconeBySeparator
		return nil
	}

	return fmt.Errorf("could not unmarshal `%s` into any supported union types for DestinationPineconeTextSplitter", string(data))
}

func (u DestinationPineconeTextSplitter) MarshalJSON() ([]byte, error) {
	if u.DestinationPineconeBySeparator != nil {
		return utils.MarshalJSON(u.DestinationPineconeBySeparator, "", true)
	}

	if u.DestinationPineconeByMarkdownHeader != nil {
		return utils.MarshalJSON(u.DestinationPineconeByMarkdownHeader, "", true)
	}

	if u.DestinationPineconeByProgrammingLanguage != nil {
		return utils.MarshalJSON(u.DestinationPineconeByProgrammingLanguage, "", true)
	}

	return nil, errors.New("could not marshal union type DestinationPineconeTextSplitter: all fields are null")
}

type DestinationPineconeProcessingConfigModel struct {
	// Size of overlap between chunks in tokens to store in vector store to better capture relevant context
	ChunkOverlap *int64 `default:"0" json:"chunk_overlap"`
	// Size of chunks in tokens to store in vector store (make sure it is not too big for the context if your LLM)
	ChunkSize int64 `json:"chunk_size"`
	// List of fields to rename. Not applicable for nested fields, but can be used to rename fields already flattened via dot notation.
	FieldNameMappings []DestinationPineconeFieldNameMappingConfigModel `json:"field_name_mappings,omitempty"`
	// List of fields in the record that should be stored as metadata. The field list is applied to all streams in the same way and non-existing fields are ignored. If none are defined, all fields are considered metadata fields. When specifying text fields, you can access nested fields in the record by using dot notation, e.g. `user.name` will access the `name` field in the `user` object. It's also possible to use wildcards to access all fields in an object, e.g. `users.*.name` will access all `names` fields in all entries of the `users` array. When specifying nested paths, all matching values are flattened into an array set to a field named by the path.
	MetadataFields []string `json:"metadata_fields,omitempty"`
	// List of fields in the record that should be used to calculate the embedding. The field list is applied to all streams in the same way and non-existing fields are ignored. If none are defined, all fields are considered text fields. When specifying text fields, you can access nested fields in the record by using dot notation, e.g. `user.name` will access the `name` field in the `user` object. It's also possible to use wildcards to access all fields in an object, e.g. `users.*.name` will access all `names` fields in all entries of the `users` array.
	TextFields []string `json:"text_fields,omitempty"`
	// Split text fields into chunks based on the specified method.
	TextSplitter *DestinationPineconeTextSplitter `json:"text_splitter,omitempty"`
}

func (d DestinationPineconeProcessingConfigModel) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationPineconeProcessingConfigModel) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *DestinationPineconeProcessingConfigModel) GetChunkOverlap() *int64 {
	if o == nil {
		return nil
	}
	return o.ChunkOverlap
}

func (o *DestinationPineconeProcessingConfigModel) GetChunkSize() int64 {
	if o == nil {
		return 0
	}
	return o.ChunkSize
}

func (o *DestinationPineconeProcessingConfigModel) GetFieldNameMappings() []DestinationPineconeFieldNameMappingConfigModel {
	if o == nil {
		return nil
	}
	return o.FieldNameMappings
}

func (o *DestinationPineconeProcessingConfigModel) GetMetadataFields() []string {
	if o == nil {
		return nil
	}
	return o.MetadataFields
}

func (o *DestinationPineconeProcessingConfigModel) GetTextFields() []string {
	if o == nil {
		return nil
	}
	return o.TextFields
}

func (o *DestinationPineconeProcessingConfigModel) GetTextSplitter() *DestinationPineconeTextSplitter {
	if o == nil {
		return nil
	}
	return o.TextSplitter
}

type Pinecone string

const (
	PineconePinecone Pinecone = "pinecone"
)

func (e Pinecone) ToPointer() *Pinecone {
	return &e
}
func (e *Pinecone) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "pinecone":
		*e = Pinecone(v)
		return nil
	default:
		return fmt.Errorf("invalid value for Pinecone: %v", v)
	}
}

// DestinationPinecone - The configuration model for the Vector DB based destinations. This model is used to generate the UI for the destination configuration,
// as well as to provide type safety for the configuration passed to the destination.
//
// The configuration model is composed of four parts:
// * Processing configuration
// * Embedding configuration
// * Indexing configuration
// * Advanced configuration
//
// Processing, embedding and advanced configuration are provided by this base class, while the indexing configuration is provided by the destination connector in the sub class.
type DestinationPinecone struct {
	// Embedding configuration
	Embedding DestinationPineconeEmbedding `json:"embedding"`
	// Pinecone is a popular vector store that can be used to store and retrieve embeddings.
	Indexing DestinationPineconeIndexing `json:"indexing"`
	// Do not store the text that gets embedded along with the vector and the metadata in the destination. If set to true, only the vector and the metadata will be stored - in this case raw text for LLM use cases needs to be retrieved from another source.
	OmitRawText     *bool                                    `default:"false" json:"omit_raw_text"`
	Processing      DestinationPineconeProcessingConfigModel `json:"processing"`
	destinationType Pinecone                                 `const:"pinecone" json:"destinationType"`
}

func (d DestinationPinecone) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationPinecone) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *DestinationPinecone) GetEmbedding() DestinationPineconeEmbedding {
	if o == nil {
		return DestinationPineconeEmbedding{}
	}
	return o.Embedding
}

func (o *DestinationPinecone) GetIndexing() DestinationPineconeIndexing {
	if o == nil {
		return DestinationPineconeIndexing{}
	}
	return o.Indexing
}

func (o *DestinationPinecone) GetOmitRawText() *bool {
	if o == nil {
		return nil
	}
	return o.OmitRawText
}

func (o *DestinationPinecone) GetProcessing() DestinationPineconeProcessingConfigModel {
	if o == nil {
		return DestinationPineconeProcessingConfigModel{}
	}
	return o.Processing
}

func (o *DestinationPinecone) GetDestinationType() Pinecone {
	return PineconePinecone
}
