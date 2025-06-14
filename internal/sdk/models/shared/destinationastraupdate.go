// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"errors"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

type DestinationAstraUpdateSchemasEmbeddingEmbedding5Mode string

const (
	DestinationAstraUpdateSchemasEmbeddingEmbedding5ModeOpenaiCompatible DestinationAstraUpdateSchemasEmbeddingEmbedding5Mode = "openai_compatible"
)

func (e DestinationAstraUpdateSchemasEmbeddingEmbedding5Mode) ToPointer() *DestinationAstraUpdateSchemasEmbeddingEmbedding5Mode {
	return &e
}
func (e *DestinationAstraUpdateSchemasEmbeddingEmbedding5Mode) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "openai_compatible":
		*e = DestinationAstraUpdateSchemasEmbeddingEmbedding5Mode(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationAstraUpdateSchemasEmbeddingEmbedding5Mode: %v", v)
	}
}

// DestinationAstraUpdateOpenAICompatible - Use a service that's compatible with the OpenAI API to embed text.
type DestinationAstraUpdateOpenAICompatible struct {
	APIKey *string `default:"" json:"api_key"`
	// The base URL for your OpenAI-compatible service
	BaseURL string `json:"base_url"`
	// The number of dimensions the embedding model is generating
	Dimensions int64                                                 `json:"dimensions"`
	mode       *DestinationAstraUpdateSchemasEmbeddingEmbedding5Mode `const:"openai_compatible" json:"mode"`
	// The name of the model to use for embedding
	ModelName *string `default:"text-embedding-ada-002" json:"model_name"`
}

func (d DestinationAstraUpdateOpenAICompatible) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationAstraUpdateOpenAICompatible) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *DestinationAstraUpdateOpenAICompatible) GetAPIKey() *string {
	if o == nil {
		return nil
	}
	return o.APIKey
}

func (o *DestinationAstraUpdateOpenAICompatible) GetBaseURL() string {
	if o == nil {
		return ""
	}
	return o.BaseURL
}

func (o *DestinationAstraUpdateOpenAICompatible) GetDimensions() int64 {
	if o == nil {
		return 0
	}
	return o.Dimensions
}

func (o *DestinationAstraUpdateOpenAICompatible) GetMode() *DestinationAstraUpdateSchemasEmbeddingEmbedding5Mode {
	return DestinationAstraUpdateSchemasEmbeddingEmbedding5ModeOpenaiCompatible.ToPointer()
}

func (o *DestinationAstraUpdateOpenAICompatible) GetModelName() *string {
	if o == nil {
		return nil
	}
	return o.ModelName
}

type DestinationAstraUpdateSchemasEmbeddingEmbeddingMode string

const (
	DestinationAstraUpdateSchemasEmbeddingEmbeddingModeAzureOpenai DestinationAstraUpdateSchemasEmbeddingEmbeddingMode = "azure_openai"
)

func (e DestinationAstraUpdateSchemasEmbeddingEmbeddingMode) ToPointer() *DestinationAstraUpdateSchemasEmbeddingEmbeddingMode {
	return &e
}
func (e *DestinationAstraUpdateSchemasEmbeddingEmbeddingMode) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "azure_openai":
		*e = DestinationAstraUpdateSchemasEmbeddingEmbeddingMode(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationAstraUpdateSchemasEmbeddingEmbeddingMode: %v", v)
	}
}

// DestinationAstraUpdateAzureOpenAI - Use the Azure-hosted OpenAI API to embed text. This option is using the text-embedding-ada-002 model with 1536 embedding dimensions.
type DestinationAstraUpdateAzureOpenAI struct {
	// The base URL for your Azure OpenAI resource.  You can find this in the Azure portal under your Azure OpenAI resource
	APIBase string `json:"api_base"`
	// The deployment for your Azure OpenAI resource.  You can find this in the Azure portal under your Azure OpenAI resource
	Deployment string                                               `json:"deployment"`
	mode       *DestinationAstraUpdateSchemasEmbeddingEmbeddingMode `const:"azure_openai" json:"mode"`
	// The API key for your Azure OpenAI resource.  You can find this in the Azure portal under your Azure OpenAI resource
	OpenaiKey string `json:"openai_key"`
}

func (d DestinationAstraUpdateAzureOpenAI) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationAstraUpdateAzureOpenAI) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *DestinationAstraUpdateAzureOpenAI) GetAPIBase() string {
	if o == nil {
		return ""
	}
	return o.APIBase
}

func (o *DestinationAstraUpdateAzureOpenAI) GetDeployment() string {
	if o == nil {
		return ""
	}
	return o.Deployment
}

func (o *DestinationAstraUpdateAzureOpenAI) GetMode() *DestinationAstraUpdateSchemasEmbeddingEmbeddingMode {
	return DestinationAstraUpdateSchemasEmbeddingEmbeddingModeAzureOpenai.ToPointer()
}

func (o *DestinationAstraUpdateAzureOpenAI) GetOpenaiKey() string {
	if o == nil {
		return ""
	}
	return o.OpenaiKey
}

type DestinationAstraUpdateSchemasEmbeddingMode string

const (
	DestinationAstraUpdateSchemasEmbeddingModeFake DestinationAstraUpdateSchemasEmbeddingMode = "fake"
)

func (e DestinationAstraUpdateSchemasEmbeddingMode) ToPointer() *DestinationAstraUpdateSchemasEmbeddingMode {
	return &e
}
func (e *DestinationAstraUpdateSchemasEmbeddingMode) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "fake":
		*e = DestinationAstraUpdateSchemasEmbeddingMode(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationAstraUpdateSchemasEmbeddingMode: %v", v)
	}
}

// DestinationAstraUpdateFake - Use a fake embedding made out of random vectors with 1536 embedding dimensions. This is useful for testing the data pipeline without incurring any costs.
type DestinationAstraUpdateFake struct {
	mode *DestinationAstraUpdateSchemasEmbeddingMode `const:"fake" json:"mode"`
}

func (d DestinationAstraUpdateFake) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationAstraUpdateFake) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *DestinationAstraUpdateFake) GetMode() *DestinationAstraUpdateSchemasEmbeddingMode {
	return DestinationAstraUpdateSchemasEmbeddingModeFake.ToPointer()
}

type DestinationAstraUpdateSchemasMode string

const (
	DestinationAstraUpdateSchemasModeCohere DestinationAstraUpdateSchemasMode = "cohere"
)

func (e DestinationAstraUpdateSchemasMode) ToPointer() *DestinationAstraUpdateSchemasMode {
	return &e
}
func (e *DestinationAstraUpdateSchemasMode) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "cohere":
		*e = DestinationAstraUpdateSchemasMode(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationAstraUpdateSchemasMode: %v", v)
	}
}

// DestinationAstraUpdateCohere - Use the Cohere API to embed text.
type DestinationAstraUpdateCohere struct {
	CohereKey string                             `json:"cohere_key"`
	mode      *DestinationAstraUpdateSchemasMode `const:"cohere" json:"mode"`
}

func (d DestinationAstraUpdateCohere) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationAstraUpdateCohere) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *DestinationAstraUpdateCohere) GetCohereKey() string {
	if o == nil {
		return ""
	}
	return o.CohereKey
}

func (o *DestinationAstraUpdateCohere) GetMode() *DestinationAstraUpdateSchemasMode {
	return DestinationAstraUpdateSchemasModeCohere.ToPointer()
}

type DestinationAstraUpdateMode string

const (
	DestinationAstraUpdateModeOpenai DestinationAstraUpdateMode = "openai"
)

func (e DestinationAstraUpdateMode) ToPointer() *DestinationAstraUpdateMode {
	return &e
}
func (e *DestinationAstraUpdateMode) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "openai":
		*e = DestinationAstraUpdateMode(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationAstraUpdateMode: %v", v)
	}
}

// DestinationAstraUpdateOpenAI - Use the OpenAI API to embed text. This option is using the text-embedding-ada-002 model with 1536 embedding dimensions.
type DestinationAstraUpdateOpenAI struct {
	mode      *DestinationAstraUpdateMode `const:"openai" json:"mode"`
	OpenaiKey string                      `json:"openai_key"`
}

func (d DestinationAstraUpdateOpenAI) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationAstraUpdateOpenAI) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *DestinationAstraUpdateOpenAI) GetMode() *DestinationAstraUpdateMode {
	return DestinationAstraUpdateModeOpenai.ToPointer()
}

func (o *DestinationAstraUpdateOpenAI) GetOpenaiKey() string {
	if o == nil {
		return ""
	}
	return o.OpenaiKey
}

type DestinationAstraUpdateEmbeddingType string

const (
	DestinationAstraUpdateEmbeddingTypeDestinationAstraUpdateOpenAI           DestinationAstraUpdateEmbeddingType = "destination-astra-update_OpenAI"
	DestinationAstraUpdateEmbeddingTypeDestinationAstraUpdateCohere           DestinationAstraUpdateEmbeddingType = "destination-astra-update_Cohere"
	DestinationAstraUpdateEmbeddingTypeDestinationAstraUpdateFake             DestinationAstraUpdateEmbeddingType = "destination-astra-update_Fake"
	DestinationAstraUpdateEmbeddingTypeDestinationAstraUpdateAzureOpenAI      DestinationAstraUpdateEmbeddingType = "destination-astra-update_Azure OpenAI"
	DestinationAstraUpdateEmbeddingTypeDestinationAstraUpdateOpenAICompatible DestinationAstraUpdateEmbeddingType = "destination-astra-update_OpenAI-compatible"
)

// DestinationAstraUpdateEmbedding - Embedding configuration
type DestinationAstraUpdateEmbedding struct {
	DestinationAstraUpdateOpenAI           *DestinationAstraUpdateOpenAI           `queryParam:"inline"`
	DestinationAstraUpdateCohere           *DestinationAstraUpdateCohere           `queryParam:"inline"`
	DestinationAstraUpdateFake             *DestinationAstraUpdateFake             `queryParam:"inline"`
	DestinationAstraUpdateAzureOpenAI      *DestinationAstraUpdateAzureOpenAI      `queryParam:"inline"`
	DestinationAstraUpdateOpenAICompatible *DestinationAstraUpdateOpenAICompatible `queryParam:"inline"`

	Type DestinationAstraUpdateEmbeddingType
}

func CreateDestinationAstraUpdateEmbeddingDestinationAstraUpdateOpenAI(destinationAstraUpdateOpenAI DestinationAstraUpdateOpenAI) DestinationAstraUpdateEmbedding {
	typ := DestinationAstraUpdateEmbeddingTypeDestinationAstraUpdateOpenAI

	return DestinationAstraUpdateEmbedding{
		DestinationAstraUpdateOpenAI: &destinationAstraUpdateOpenAI,
		Type:                         typ,
	}
}

func CreateDestinationAstraUpdateEmbeddingDestinationAstraUpdateCohere(destinationAstraUpdateCohere DestinationAstraUpdateCohere) DestinationAstraUpdateEmbedding {
	typ := DestinationAstraUpdateEmbeddingTypeDestinationAstraUpdateCohere

	return DestinationAstraUpdateEmbedding{
		DestinationAstraUpdateCohere: &destinationAstraUpdateCohere,
		Type:                         typ,
	}
}

func CreateDestinationAstraUpdateEmbeddingDestinationAstraUpdateFake(destinationAstraUpdateFake DestinationAstraUpdateFake) DestinationAstraUpdateEmbedding {
	typ := DestinationAstraUpdateEmbeddingTypeDestinationAstraUpdateFake

	return DestinationAstraUpdateEmbedding{
		DestinationAstraUpdateFake: &destinationAstraUpdateFake,
		Type:                       typ,
	}
}

func CreateDestinationAstraUpdateEmbeddingDestinationAstraUpdateAzureOpenAI(destinationAstraUpdateAzureOpenAI DestinationAstraUpdateAzureOpenAI) DestinationAstraUpdateEmbedding {
	typ := DestinationAstraUpdateEmbeddingTypeDestinationAstraUpdateAzureOpenAI

	return DestinationAstraUpdateEmbedding{
		DestinationAstraUpdateAzureOpenAI: &destinationAstraUpdateAzureOpenAI,
		Type:                              typ,
	}
}

func CreateDestinationAstraUpdateEmbeddingDestinationAstraUpdateOpenAICompatible(destinationAstraUpdateOpenAICompatible DestinationAstraUpdateOpenAICompatible) DestinationAstraUpdateEmbedding {
	typ := DestinationAstraUpdateEmbeddingTypeDestinationAstraUpdateOpenAICompatible

	return DestinationAstraUpdateEmbedding{
		DestinationAstraUpdateOpenAICompatible: &destinationAstraUpdateOpenAICompatible,
		Type:                                   typ,
	}
}

func (u *DestinationAstraUpdateEmbedding) UnmarshalJSON(data []byte) error {

	var destinationAstraUpdateFake DestinationAstraUpdateFake = DestinationAstraUpdateFake{}
	if err := utils.UnmarshalJSON(data, &destinationAstraUpdateFake, "", true, true); err == nil {
		u.DestinationAstraUpdateFake = &destinationAstraUpdateFake
		u.Type = DestinationAstraUpdateEmbeddingTypeDestinationAstraUpdateFake
		return nil
	}

	var destinationAstraUpdateOpenAI DestinationAstraUpdateOpenAI = DestinationAstraUpdateOpenAI{}
	if err := utils.UnmarshalJSON(data, &destinationAstraUpdateOpenAI, "", true, true); err == nil {
		u.DestinationAstraUpdateOpenAI = &destinationAstraUpdateOpenAI
		u.Type = DestinationAstraUpdateEmbeddingTypeDestinationAstraUpdateOpenAI
		return nil
	}

	var destinationAstraUpdateCohere DestinationAstraUpdateCohere = DestinationAstraUpdateCohere{}
	if err := utils.UnmarshalJSON(data, &destinationAstraUpdateCohere, "", true, true); err == nil {
		u.DestinationAstraUpdateCohere = &destinationAstraUpdateCohere
		u.Type = DestinationAstraUpdateEmbeddingTypeDestinationAstraUpdateCohere
		return nil
	}

	var destinationAstraUpdateAzureOpenAI DestinationAstraUpdateAzureOpenAI = DestinationAstraUpdateAzureOpenAI{}
	if err := utils.UnmarshalJSON(data, &destinationAstraUpdateAzureOpenAI, "", true, true); err == nil {
		u.DestinationAstraUpdateAzureOpenAI = &destinationAstraUpdateAzureOpenAI
		u.Type = DestinationAstraUpdateEmbeddingTypeDestinationAstraUpdateAzureOpenAI
		return nil
	}

	var destinationAstraUpdateOpenAICompatible DestinationAstraUpdateOpenAICompatible = DestinationAstraUpdateOpenAICompatible{}
	if err := utils.UnmarshalJSON(data, &destinationAstraUpdateOpenAICompatible, "", true, true); err == nil {
		u.DestinationAstraUpdateOpenAICompatible = &destinationAstraUpdateOpenAICompatible
		u.Type = DestinationAstraUpdateEmbeddingTypeDestinationAstraUpdateOpenAICompatible
		return nil
	}

	return fmt.Errorf("could not unmarshal `%s` into any supported union types for DestinationAstraUpdateEmbedding", string(data))
}

func (u DestinationAstraUpdateEmbedding) MarshalJSON() ([]byte, error) {
	if u.DestinationAstraUpdateOpenAI != nil {
		return utils.MarshalJSON(u.DestinationAstraUpdateOpenAI, "", true)
	}

	if u.DestinationAstraUpdateCohere != nil {
		return utils.MarshalJSON(u.DestinationAstraUpdateCohere, "", true)
	}

	if u.DestinationAstraUpdateFake != nil {
		return utils.MarshalJSON(u.DestinationAstraUpdateFake, "", true)
	}

	if u.DestinationAstraUpdateAzureOpenAI != nil {
		return utils.MarshalJSON(u.DestinationAstraUpdateAzureOpenAI, "", true)
	}

	if u.DestinationAstraUpdateOpenAICompatible != nil {
		return utils.MarshalJSON(u.DestinationAstraUpdateOpenAICompatible, "", true)
	}

	return nil, errors.New("could not marshal union type DestinationAstraUpdateEmbedding: all fields are null")
}

// DestinationAstraUpdateIndexing - Astra DB gives developers the APIs, real-time data and ecosystem integrations to put accurate RAG and Gen AI apps with fewer hallucinations in production.
type DestinationAstraUpdateIndexing struct {
	// The application token authorizes a user to connect to a specific Astra DB database. It is created when the user clicks the Generate Token button on the Overview tab of the Database page in the Astra UI.
	AstraDbAppToken string `json:"astra_db_app_token"`
	// The endpoint specifies which Astra DB database queries are sent to. It can be copied from the Database Details section of the Overview tab of the Database page in the Astra UI.
	AstraDbEndpoint string `json:"astra_db_endpoint"`
	// Keyspaces (or Namespaces) serve as containers for organizing data within a database. You can create a new keyspace uisng the Data Explorer tab in the Astra UI. The keyspace default_keyspace is created for you when you create a Vector Database in Astra DB.
	AstraDbKeyspace string `json:"astra_db_keyspace"`
	// Collections hold data. They are analagous to tables in traditional Cassandra terminology. This tool will create the collection with the provided name automatically if it does not already exist. Alternatively, you can create one thorugh the Data Explorer tab in the Astra UI.
	Collection string `json:"collection"`
}

func (o *DestinationAstraUpdateIndexing) GetAstraDbAppToken() string {
	if o == nil {
		return ""
	}
	return o.AstraDbAppToken
}

func (o *DestinationAstraUpdateIndexing) GetAstraDbEndpoint() string {
	if o == nil {
		return ""
	}
	return o.AstraDbEndpoint
}

func (o *DestinationAstraUpdateIndexing) GetAstraDbKeyspace() string {
	if o == nil {
		return ""
	}
	return o.AstraDbKeyspace
}

func (o *DestinationAstraUpdateIndexing) GetCollection() string {
	if o == nil {
		return ""
	}
	return o.Collection
}

type DestinationAstraUpdateFieldNameMappingConfigModel struct {
	// The field name in the source
	FromField string `json:"from_field"`
	// The field name to use in the destination
	ToField string `json:"to_field"`
}

func (o *DestinationAstraUpdateFieldNameMappingConfigModel) GetFromField() string {
	if o == nil {
		return ""
	}
	return o.FromField
}

func (o *DestinationAstraUpdateFieldNameMappingConfigModel) GetToField() string {
	if o == nil {
		return ""
	}
	return o.ToField
}

// DestinationAstraUpdateLanguage - Split code in suitable places based on the programming language
type DestinationAstraUpdateLanguage string

const (
	DestinationAstraUpdateLanguageCpp      DestinationAstraUpdateLanguage = "cpp"
	DestinationAstraUpdateLanguageGo       DestinationAstraUpdateLanguage = "go"
	DestinationAstraUpdateLanguageJava     DestinationAstraUpdateLanguage = "java"
	DestinationAstraUpdateLanguageJs       DestinationAstraUpdateLanguage = "js"
	DestinationAstraUpdateLanguagePhp      DestinationAstraUpdateLanguage = "php"
	DestinationAstraUpdateLanguageProto    DestinationAstraUpdateLanguage = "proto"
	DestinationAstraUpdateLanguagePython   DestinationAstraUpdateLanguage = "python"
	DestinationAstraUpdateLanguageRst      DestinationAstraUpdateLanguage = "rst"
	DestinationAstraUpdateLanguageRuby     DestinationAstraUpdateLanguage = "ruby"
	DestinationAstraUpdateLanguageRust     DestinationAstraUpdateLanguage = "rust"
	DestinationAstraUpdateLanguageScala    DestinationAstraUpdateLanguage = "scala"
	DestinationAstraUpdateLanguageSwift    DestinationAstraUpdateLanguage = "swift"
	DestinationAstraUpdateLanguageMarkdown DestinationAstraUpdateLanguage = "markdown"
	DestinationAstraUpdateLanguageLatex    DestinationAstraUpdateLanguage = "latex"
	DestinationAstraUpdateLanguageHTML     DestinationAstraUpdateLanguage = "html"
	DestinationAstraUpdateLanguageSol      DestinationAstraUpdateLanguage = "sol"
)

func (e DestinationAstraUpdateLanguage) ToPointer() *DestinationAstraUpdateLanguage {
	return &e
}
func (e *DestinationAstraUpdateLanguage) UnmarshalJSON(data []byte) error {
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
		*e = DestinationAstraUpdateLanguage(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationAstraUpdateLanguage: %v", v)
	}
}

type DestinationAstraUpdateSchemasProcessingTextSplitterTextSplitterMode string

const (
	DestinationAstraUpdateSchemasProcessingTextSplitterTextSplitterModeCode DestinationAstraUpdateSchemasProcessingTextSplitterTextSplitterMode = "code"
)

func (e DestinationAstraUpdateSchemasProcessingTextSplitterTextSplitterMode) ToPointer() *DestinationAstraUpdateSchemasProcessingTextSplitterTextSplitterMode {
	return &e
}
func (e *DestinationAstraUpdateSchemasProcessingTextSplitterTextSplitterMode) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "code":
		*e = DestinationAstraUpdateSchemasProcessingTextSplitterTextSplitterMode(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationAstraUpdateSchemasProcessingTextSplitterTextSplitterMode: %v", v)
	}
}

// DestinationAstraUpdateByProgrammingLanguage - Split the text by suitable delimiters based on the programming language. This is useful for splitting code into chunks.
type DestinationAstraUpdateByProgrammingLanguage struct {
	// Split code in suitable places based on the programming language
	Language DestinationAstraUpdateLanguage                                       `json:"language"`
	mode     *DestinationAstraUpdateSchemasProcessingTextSplitterTextSplitterMode `const:"code" json:"mode"`
}

func (d DestinationAstraUpdateByProgrammingLanguage) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationAstraUpdateByProgrammingLanguage) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *DestinationAstraUpdateByProgrammingLanguage) GetLanguage() DestinationAstraUpdateLanguage {
	if o == nil {
		return DestinationAstraUpdateLanguage("")
	}
	return o.Language
}

func (o *DestinationAstraUpdateByProgrammingLanguage) GetMode() *DestinationAstraUpdateSchemasProcessingTextSplitterTextSplitterMode {
	return DestinationAstraUpdateSchemasProcessingTextSplitterTextSplitterModeCode.ToPointer()
}

type DestinationAstraUpdateSchemasProcessingTextSplitterMode string

const (
	DestinationAstraUpdateSchemasProcessingTextSplitterModeMarkdown DestinationAstraUpdateSchemasProcessingTextSplitterMode = "markdown"
)

func (e DestinationAstraUpdateSchemasProcessingTextSplitterMode) ToPointer() *DestinationAstraUpdateSchemasProcessingTextSplitterMode {
	return &e
}
func (e *DestinationAstraUpdateSchemasProcessingTextSplitterMode) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "markdown":
		*e = DestinationAstraUpdateSchemasProcessingTextSplitterMode(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationAstraUpdateSchemasProcessingTextSplitterMode: %v", v)
	}
}

// DestinationAstraUpdateByMarkdownHeader - Split the text by Markdown headers down to the specified header level. If the chunk size fits multiple sections, they will be combined into a single chunk.
type DestinationAstraUpdateByMarkdownHeader struct {
	mode *DestinationAstraUpdateSchemasProcessingTextSplitterMode `const:"markdown" json:"mode"`
	// Level of markdown headers to split text fields by. Headings down to the specified level will be used as split points
	SplitLevel *int64 `default:"1" json:"split_level"`
}

func (d DestinationAstraUpdateByMarkdownHeader) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationAstraUpdateByMarkdownHeader) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *DestinationAstraUpdateByMarkdownHeader) GetMode() *DestinationAstraUpdateSchemasProcessingTextSplitterMode {
	return DestinationAstraUpdateSchemasProcessingTextSplitterModeMarkdown.ToPointer()
}

func (o *DestinationAstraUpdateByMarkdownHeader) GetSplitLevel() *int64 {
	if o == nil {
		return nil
	}
	return o.SplitLevel
}

type DestinationAstraUpdateSchemasProcessingMode string

const (
	DestinationAstraUpdateSchemasProcessingModeSeparator DestinationAstraUpdateSchemasProcessingMode = "separator"
)

func (e DestinationAstraUpdateSchemasProcessingMode) ToPointer() *DestinationAstraUpdateSchemasProcessingMode {
	return &e
}
func (e *DestinationAstraUpdateSchemasProcessingMode) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "separator":
		*e = DestinationAstraUpdateSchemasProcessingMode(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationAstraUpdateSchemasProcessingMode: %v", v)
	}
}

// DestinationAstraUpdateBySeparator - Split the text by the list of separators until the chunk size is reached, using the earlier mentioned separators where possible. This is useful for splitting text fields by paragraphs, sentences, words, etc.
type DestinationAstraUpdateBySeparator struct {
	// Whether to keep the separator in the resulting chunks
	KeepSeparator *bool                                        `default:"false" json:"keep_separator"`
	mode          *DestinationAstraUpdateSchemasProcessingMode `const:"separator" json:"mode"`
	// List of separator strings to split text fields by. The separator itself needs to be wrapped in double quotes, e.g. to split by the dot character, use ".". To split by a newline, use "\n".
	Separators []string `json:"separators,omitempty"`
}

func (d DestinationAstraUpdateBySeparator) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationAstraUpdateBySeparator) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *DestinationAstraUpdateBySeparator) GetKeepSeparator() *bool {
	if o == nil {
		return nil
	}
	return o.KeepSeparator
}

func (o *DestinationAstraUpdateBySeparator) GetMode() *DestinationAstraUpdateSchemasProcessingMode {
	return DestinationAstraUpdateSchemasProcessingModeSeparator.ToPointer()
}

func (o *DestinationAstraUpdateBySeparator) GetSeparators() []string {
	if o == nil {
		return nil
	}
	return o.Separators
}

type DestinationAstraUpdateTextSplitterType string

const (
	DestinationAstraUpdateTextSplitterTypeDestinationAstraUpdateBySeparator           DestinationAstraUpdateTextSplitterType = "destination-astra-update_By Separator"
	DestinationAstraUpdateTextSplitterTypeDestinationAstraUpdateByMarkdownHeader      DestinationAstraUpdateTextSplitterType = "destination-astra-update_By Markdown header"
	DestinationAstraUpdateTextSplitterTypeDestinationAstraUpdateByProgrammingLanguage DestinationAstraUpdateTextSplitterType = "destination-astra-update_By Programming Language"
)

// DestinationAstraUpdateTextSplitter - Split text fields into chunks based on the specified method.
type DestinationAstraUpdateTextSplitter struct {
	DestinationAstraUpdateBySeparator           *DestinationAstraUpdateBySeparator           `queryParam:"inline"`
	DestinationAstraUpdateByMarkdownHeader      *DestinationAstraUpdateByMarkdownHeader      `queryParam:"inline"`
	DestinationAstraUpdateByProgrammingLanguage *DestinationAstraUpdateByProgrammingLanguage `queryParam:"inline"`

	Type DestinationAstraUpdateTextSplitterType
}

func CreateDestinationAstraUpdateTextSplitterDestinationAstraUpdateBySeparator(destinationAstraUpdateBySeparator DestinationAstraUpdateBySeparator) DestinationAstraUpdateTextSplitter {
	typ := DestinationAstraUpdateTextSplitterTypeDestinationAstraUpdateBySeparator

	return DestinationAstraUpdateTextSplitter{
		DestinationAstraUpdateBySeparator: &destinationAstraUpdateBySeparator,
		Type:                              typ,
	}
}

func CreateDestinationAstraUpdateTextSplitterDestinationAstraUpdateByMarkdownHeader(destinationAstraUpdateByMarkdownHeader DestinationAstraUpdateByMarkdownHeader) DestinationAstraUpdateTextSplitter {
	typ := DestinationAstraUpdateTextSplitterTypeDestinationAstraUpdateByMarkdownHeader

	return DestinationAstraUpdateTextSplitter{
		DestinationAstraUpdateByMarkdownHeader: &destinationAstraUpdateByMarkdownHeader,
		Type:                                   typ,
	}
}

func CreateDestinationAstraUpdateTextSplitterDestinationAstraUpdateByProgrammingLanguage(destinationAstraUpdateByProgrammingLanguage DestinationAstraUpdateByProgrammingLanguage) DestinationAstraUpdateTextSplitter {
	typ := DestinationAstraUpdateTextSplitterTypeDestinationAstraUpdateByProgrammingLanguage

	return DestinationAstraUpdateTextSplitter{
		DestinationAstraUpdateByProgrammingLanguage: &destinationAstraUpdateByProgrammingLanguage,
		Type: typ,
	}
}

func (u *DestinationAstraUpdateTextSplitter) UnmarshalJSON(data []byte) error {

	var destinationAstraUpdateByMarkdownHeader DestinationAstraUpdateByMarkdownHeader = DestinationAstraUpdateByMarkdownHeader{}
	if err := utils.UnmarshalJSON(data, &destinationAstraUpdateByMarkdownHeader, "", true, true); err == nil {
		u.DestinationAstraUpdateByMarkdownHeader = &destinationAstraUpdateByMarkdownHeader
		u.Type = DestinationAstraUpdateTextSplitterTypeDestinationAstraUpdateByMarkdownHeader
		return nil
	}

	var destinationAstraUpdateByProgrammingLanguage DestinationAstraUpdateByProgrammingLanguage = DestinationAstraUpdateByProgrammingLanguage{}
	if err := utils.UnmarshalJSON(data, &destinationAstraUpdateByProgrammingLanguage, "", true, true); err == nil {
		u.DestinationAstraUpdateByProgrammingLanguage = &destinationAstraUpdateByProgrammingLanguage
		u.Type = DestinationAstraUpdateTextSplitterTypeDestinationAstraUpdateByProgrammingLanguage
		return nil
	}

	var destinationAstraUpdateBySeparator DestinationAstraUpdateBySeparator = DestinationAstraUpdateBySeparator{}
	if err := utils.UnmarshalJSON(data, &destinationAstraUpdateBySeparator, "", true, true); err == nil {
		u.DestinationAstraUpdateBySeparator = &destinationAstraUpdateBySeparator
		u.Type = DestinationAstraUpdateTextSplitterTypeDestinationAstraUpdateBySeparator
		return nil
	}

	return fmt.Errorf("could not unmarshal `%s` into any supported union types for DestinationAstraUpdateTextSplitter", string(data))
}

func (u DestinationAstraUpdateTextSplitter) MarshalJSON() ([]byte, error) {
	if u.DestinationAstraUpdateBySeparator != nil {
		return utils.MarshalJSON(u.DestinationAstraUpdateBySeparator, "", true)
	}

	if u.DestinationAstraUpdateByMarkdownHeader != nil {
		return utils.MarshalJSON(u.DestinationAstraUpdateByMarkdownHeader, "", true)
	}

	if u.DestinationAstraUpdateByProgrammingLanguage != nil {
		return utils.MarshalJSON(u.DestinationAstraUpdateByProgrammingLanguage, "", true)
	}

	return nil, errors.New("could not marshal union type DestinationAstraUpdateTextSplitter: all fields are null")
}

type DestinationAstraUpdateProcessingConfigModel struct {
	// Size of overlap between chunks in tokens to store in vector store to better capture relevant context
	ChunkOverlap *int64 `default:"0" json:"chunk_overlap"`
	// Size of chunks in tokens to store in vector store (make sure it is not too big for the context if your LLM)
	ChunkSize int64 `json:"chunk_size"`
	// List of fields to rename. Not applicable for nested fields, but can be used to rename fields already flattened via dot notation.
	FieldNameMappings []DestinationAstraUpdateFieldNameMappingConfigModel `json:"field_name_mappings,omitempty"`
	// List of fields in the record that should be stored as metadata. The field list is applied to all streams in the same way and non-existing fields are ignored. If none are defined, all fields are considered metadata fields. When specifying text fields, you can access nested fields in the record by using dot notation, e.g. `user.name` will access the `name` field in the `user` object. It's also possible to use wildcards to access all fields in an object, e.g. `users.*.name` will access all `names` fields in all entries of the `users` array. When specifying nested paths, all matching values are flattened into an array set to a field named by the path.
	MetadataFields []string `json:"metadata_fields,omitempty"`
	// List of fields in the record that should be used to calculate the embedding. The field list is applied to all streams in the same way and non-existing fields are ignored. If none are defined, all fields are considered text fields. When specifying text fields, you can access nested fields in the record by using dot notation, e.g. `user.name` will access the `name` field in the `user` object. It's also possible to use wildcards to access all fields in an object, e.g. `users.*.name` will access all `names` fields in all entries of the `users` array.
	TextFields []string `json:"text_fields,omitempty"`
	// Split text fields into chunks based on the specified method.
	TextSplitter *DestinationAstraUpdateTextSplitter `json:"text_splitter,omitempty"`
}

func (d DestinationAstraUpdateProcessingConfigModel) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationAstraUpdateProcessingConfigModel) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *DestinationAstraUpdateProcessingConfigModel) GetChunkOverlap() *int64 {
	if o == nil {
		return nil
	}
	return o.ChunkOverlap
}

func (o *DestinationAstraUpdateProcessingConfigModel) GetChunkSize() int64 {
	if o == nil {
		return 0
	}
	return o.ChunkSize
}

func (o *DestinationAstraUpdateProcessingConfigModel) GetFieldNameMappings() []DestinationAstraUpdateFieldNameMappingConfigModel {
	if o == nil {
		return nil
	}
	return o.FieldNameMappings
}

func (o *DestinationAstraUpdateProcessingConfigModel) GetMetadataFields() []string {
	if o == nil {
		return nil
	}
	return o.MetadataFields
}

func (o *DestinationAstraUpdateProcessingConfigModel) GetTextFields() []string {
	if o == nil {
		return nil
	}
	return o.TextFields
}

func (o *DestinationAstraUpdateProcessingConfigModel) GetTextSplitter() *DestinationAstraUpdateTextSplitter {
	if o == nil {
		return nil
	}
	return o.TextSplitter
}

// DestinationAstraUpdate - The configuration model for the Vector DB based destinations. This model is used to generate the UI for the destination configuration,
// as well as to provide type safety for the configuration passed to the destination.
//
// The configuration model is composed of four parts:
// * Processing configuration
// * Embedding configuration
// * Indexing configuration
// * Advanced configuration
//
// Processing, embedding and advanced configuration are provided by this base class, while the indexing configuration is provided by the destination connector in the sub class.
type DestinationAstraUpdate struct {
	// Embedding configuration
	Embedding DestinationAstraUpdateEmbedding `json:"embedding"`
	// Astra DB gives developers the APIs, real-time data and ecosystem integrations to put accurate RAG and Gen AI apps with fewer hallucinations in production.
	Indexing DestinationAstraUpdateIndexing `json:"indexing"`
	// Do not store the text that gets embedded along with the vector and the metadata in the destination. If set to true, only the vector and the metadata will be stored - in this case raw text for LLM use cases needs to be retrieved from another source.
	OmitRawText *bool                                       `default:"false" json:"omit_raw_text"`
	Processing  DestinationAstraUpdateProcessingConfigModel `json:"processing"`
}

func (d DestinationAstraUpdate) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationAstraUpdate) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *DestinationAstraUpdate) GetEmbedding() DestinationAstraUpdateEmbedding {
	if o == nil {
		return DestinationAstraUpdateEmbedding{}
	}
	return o.Embedding
}

func (o *DestinationAstraUpdate) GetIndexing() DestinationAstraUpdateIndexing {
	if o == nil {
		return DestinationAstraUpdateIndexing{}
	}
	return o.Indexing
}

func (o *DestinationAstraUpdate) GetOmitRawText() *bool {
	if o == nil {
		return nil
	}
	return o.OmitRawText
}

func (o *DestinationAstraUpdate) GetProcessing() DestinationAstraUpdateProcessingConfigModel {
	if o == nil {
		return DestinationAstraUpdateProcessingConfigModel{}
	}
	return o.Processing
}
