// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"errors"
	"fmt"
	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/internal/utils"
)

type DestinationAzureBlobStorageUpdateSchemasFormatType string

const (
	DestinationAzureBlobStorageUpdateSchemasFormatTypeJsonl DestinationAzureBlobStorageUpdateSchemasFormatType = "JSONL"
)

func (e DestinationAzureBlobStorageUpdateSchemasFormatType) ToPointer() *DestinationAzureBlobStorageUpdateSchemasFormatType {
	return &e
}
func (e *DestinationAzureBlobStorageUpdateSchemasFormatType) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "JSONL":
		*e = DestinationAzureBlobStorageUpdateSchemasFormatType(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationAzureBlobStorageUpdateSchemasFormatType: %v", v)
	}
}

type DestinationAzureBlobStorageUpdateJSONLinesNewlineDelimitedJSON struct {
	formatType DestinationAzureBlobStorageUpdateSchemasFormatType `const:"JSONL" json:"format_type"`
	// Add file extensions to the output file.
	FileExtension *bool `default:"false" json:"file_extension"`
}

func (d DestinationAzureBlobStorageUpdateJSONLinesNewlineDelimitedJSON) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationAzureBlobStorageUpdateJSONLinesNewlineDelimitedJSON) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *DestinationAzureBlobStorageUpdateJSONLinesNewlineDelimitedJSON) GetFormatType() DestinationAzureBlobStorageUpdateSchemasFormatType {
	return DestinationAzureBlobStorageUpdateSchemasFormatTypeJsonl
}

func (o *DestinationAzureBlobStorageUpdateJSONLinesNewlineDelimitedJSON) GetFileExtension() *bool {
	if o == nil {
		return nil
	}
	return o.FileExtension
}

type DestinationAzureBlobStorageUpdateFormatType string

const (
	DestinationAzureBlobStorageUpdateFormatTypeCsv DestinationAzureBlobStorageUpdateFormatType = "CSV"
)

func (e DestinationAzureBlobStorageUpdateFormatType) ToPointer() *DestinationAzureBlobStorageUpdateFormatType {
	return &e
}
func (e *DestinationAzureBlobStorageUpdateFormatType) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "CSV":
		*e = DestinationAzureBlobStorageUpdateFormatType(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationAzureBlobStorageUpdateFormatType: %v", v)
	}
}

// DestinationAzureBlobStorageUpdateNormalizationFlattening - Whether the input json data should be normalized (flattened) in the output CSV. Please refer to docs for details.
type DestinationAzureBlobStorageUpdateNormalizationFlattening string

const (
	DestinationAzureBlobStorageUpdateNormalizationFlatteningNoFlattening        DestinationAzureBlobStorageUpdateNormalizationFlattening = "No flattening"
	DestinationAzureBlobStorageUpdateNormalizationFlatteningRootLevelFlattening DestinationAzureBlobStorageUpdateNormalizationFlattening = "Root level flattening"
)

func (e DestinationAzureBlobStorageUpdateNormalizationFlattening) ToPointer() *DestinationAzureBlobStorageUpdateNormalizationFlattening {
	return &e
}
func (e *DestinationAzureBlobStorageUpdateNormalizationFlattening) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "No flattening":
		fallthrough
	case "Root level flattening":
		*e = DestinationAzureBlobStorageUpdateNormalizationFlattening(v)
		return nil
	default:
		return fmt.Errorf("invalid value for DestinationAzureBlobStorageUpdateNormalizationFlattening: %v", v)
	}
}

type DestinationAzureBlobStorageUpdateCSVCommaSeparatedValues struct {
	formatType DestinationAzureBlobStorageUpdateFormatType `const:"CSV" json:"format_type"`
	// Whether the input json data should be normalized (flattened) in the output CSV. Please refer to docs for details.
	Flattening *DestinationAzureBlobStorageUpdateNormalizationFlattening `default:"No flattening" json:"flattening"`
	// Add file extensions to the output file.
	FileExtension *bool `default:"false" json:"file_extension"`
}

func (d DestinationAzureBlobStorageUpdateCSVCommaSeparatedValues) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationAzureBlobStorageUpdateCSVCommaSeparatedValues) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, true); err != nil {
		return err
	}
	return nil
}

func (o *DestinationAzureBlobStorageUpdateCSVCommaSeparatedValues) GetFormatType() DestinationAzureBlobStorageUpdateFormatType {
	return DestinationAzureBlobStorageUpdateFormatTypeCsv
}

func (o *DestinationAzureBlobStorageUpdateCSVCommaSeparatedValues) GetFlattening() *DestinationAzureBlobStorageUpdateNormalizationFlattening {
	if o == nil {
		return nil
	}
	return o.Flattening
}

func (o *DestinationAzureBlobStorageUpdateCSVCommaSeparatedValues) GetFileExtension() *bool {
	if o == nil {
		return nil
	}
	return o.FileExtension
}

type DestinationAzureBlobStorageUpdateOutputFormatType string

const (
	DestinationAzureBlobStorageUpdateOutputFormatTypeDestinationAzureBlobStorageUpdateCSVCommaSeparatedValues       DestinationAzureBlobStorageUpdateOutputFormatType = "destination-azure-blob-storage-update_CSV: Comma-Separated Values"
	DestinationAzureBlobStorageUpdateOutputFormatTypeDestinationAzureBlobStorageUpdateJSONLinesNewlineDelimitedJSON DestinationAzureBlobStorageUpdateOutputFormatType = "destination-azure-blob-storage-update_JSON Lines: newline-delimited JSON"
)

// DestinationAzureBlobStorageUpdateOutputFormat - Output data format
type DestinationAzureBlobStorageUpdateOutputFormat struct {
	DestinationAzureBlobStorageUpdateCSVCommaSeparatedValues       *DestinationAzureBlobStorageUpdateCSVCommaSeparatedValues       `queryParam:"inline"`
	DestinationAzureBlobStorageUpdateJSONLinesNewlineDelimitedJSON *DestinationAzureBlobStorageUpdateJSONLinesNewlineDelimitedJSON `queryParam:"inline"`

	Type DestinationAzureBlobStorageUpdateOutputFormatType
}

func CreateDestinationAzureBlobStorageUpdateOutputFormatDestinationAzureBlobStorageUpdateCSVCommaSeparatedValues(destinationAzureBlobStorageUpdateCSVCommaSeparatedValues DestinationAzureBlobStorageUpdateCSVCommaSeparatedValues) DestinationAzureBlobStorageUpdateOutputFormat {
	typ := DestinationAzureBlobStorageUpdateOutputFormatTypeDestinationAzureBlobStorageUpdateCSVCommaSeparatedValues

	return DestinationAzureBlobStorageUpdateOutputFormat{
		DestinationAzureBlobStorageUpdateCSVCommaSeparatedValues: &destinationAzureBlobStorageUpdateCSVCommaSeparatedValues,
		Type: typ,
	}
}

func CreateDestinationAzureBlobStorageUpdateOutputFormatDestinationAzureBlobStorageUpdateJSONLinesNewlineDelimitedJSON(destinationAzureBlobStorageUpdateJSONLinesNewlineDelimitedJSON DestinationAzureBlobStorageUpdateJSONLinesNewlineDelimitedJSON) DestinationAzureBlobStorageUpdateOutputFormat {
	typ := DestinationAzureBlobStorageUpdateOutputFormatTypeDestinationAzureBlobStorageUpdateJSONLinesNewlineDelimitedJSON

	return DestinationAzureBlobStorageUpdateOutputFormat{
		DestinationAzureBlobStorageUpdateJSONLinesNewlineDelimitedJSON: &destinationAzureBlobStorageUpdateJSONLinesNewlineDelimitedJSON,
		Type: typ,
	}
}

func (u *DestinationAzureBlobStorageUpdateOutputFormat) UnmarshalJSON(data []byte) error {

	var destinationAzureBlobStorageUpdateJSONLinesNewlineDelimitedJSON DestinationAzureBlobStorageUpdateJSONLinesNewlineDelimitedJSON = DestinationAzureBlobStorageUpdateJSONLinesNewlineDelimitedJSON{}
	if err := utils.UnmarshalJSON(data, &destinationAzureBlobStorageUpdateJSONLinesNewlineDelimitedJSON, "", true, true); err == nil {
		u.DestinationAzureBlobStorageUpdateJSONLinesNewlineDelimitedJSON = &destinationAzureBlobStorageUpdateJSONLinesNewlineDelimitedJSON
		u.Type = DestinationAzureBlobStorageUpdateOutputFormatTypeDestinationAzureBlobStorageUpdateJSONLinesNewlineDelimitedJSON
		return nil
	}

	var destinationAzureBlobStorageUpdateCSVCommaSeparatedValues DestinationAzureBlobStorageUpdateCSVCommaSeparatedValues = DestinationAzureBlobStorageUpdateCSVCommaSeparatedValues{}
	if err := utils.UnmarshalJSON(data, &destinationAzureBlobStorageUpdateCSVCommaSeparatedValues, "", true, true); err == nil {
		u.DestinationAzureBlobStorageUpdateCSVCommaSeparatedValues = &destinationAzureBlobStorageUpdateCSVCommaSeparatedValues
		u.Type = DestinationAzureBlobStorageUpdateOutputFormatTypeDestinationAzureBlobStorageUpdateCSVCommaSeparatedValues
		return nil
	}

	return fmt.Errorf("could not unmarshal `%s` into any supported union types for DestinationAzureBlobStorageUpdateOutputFormat", string(data))
}

func (u DestinationAzureBlobStorageUpdateOutputFormat) MarshalJSON() ([]byte, error) {
	if u.DestinationAzureBlobStorageUpdateCSVCommaSeparatedValues != nil {
		return utils.MarshalJSON(u.DestinationAzureBlobStorageUpdateCSVCommaSeparatedValues, "", true)
	}

	if u.DestinationAzureBlobStorageUpdateJSONLinesNewlineDelimitedJSON != nil {
		return utils.MarshalJSON(u.DestinationAzureBlobStorageUpdateJSONLinesNewlineDelimitedJSON, "", true)
	}

	return nil, errors.New("could not marshal union type DestinationAzureBlobStorageUpdateOutputFormat: all fields are null")
}

type DestinationAzureBlobStorageUpdate struct {
	// This is Azure Blob Storage endpoint domain name. Leave default value (or leave it empty if run container from command line) to use Microsoft native from example.
	AzureBlobStorageEndpointDomainName *string `default:"blob.core.windows.net" json:"azure_blob_storage_endpoint_domain_name"`
	// The name of the Azure blob storage container. If not exists - will be created automatically. May be empty, then will be created automatically airbytecontainer+timestamp
	AzureBlobStorageContainerName *string `json:"azure_blob_storage_container_name,omitempty"`
	// The account's name of the Azure Blob Storage.
	AzureBlobStorageAccountName string `json:"azure_blob_storage_account_name"`
	// The Azure blob storage account key.
	AzureBlobStorageAccountKey string `json:"azure_blob_storage_account_key"`
	// The amount of megabytes to buffer for the output stream to Azure. This will impact memory footprint on workers, but may need adjustment for performance and appropriate block size in Azure.
	AzureBlobStorageOutputBufferSize *int64 `default:"5" json:"azure_blob_storage_output_buffer_size"`
	// The amount of megabytes after which the connector should spill the records in a new blob object. Make sure to configure size greater than individual records. Enter 0 if not applicable
	AzureBlobStorageSpillSize *int64 `default:"500" json:"azure_blob_storage_spill_size"`
	// Output data format
	Format DestinationAzureBlobStorageUpdateOutputFormat `json:"format"`
}

func (d DestinationAzureBlobStorageUpdate) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DestinationAzureBlobStorageUpdate) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *DestinationAzureBlobStorageUpdate) GetAzureBlobStorageEndpointDomainName() *string {
	if o == nil {
		return nil
	}
	return o.AzureBlobStorageEndpointDomainName
}

func (o *DestinationAzureBlobStorageUpdate) GetAzureBlobStorageContainerName() *string {
	if o == nil {
		return nil
	}
	return o.AzureBlobStorageContainerName
}

func (o *DestinationAzureBlobStorageUpdate) GetAzureBlobStorageAccountName() string {
	if o == nil {
		return ""
	}
	return o.AzureBlobStorageAccountName
}

func (o *DestinationAzureBlobStorageUpdate) GetAzureBlobStorageAccountKey() string {
	if o == nil {
		return ""
	}
	return o.AzureBlobStorageAccountKey
}

func (o *DestinationAzureBlobStorageUpdate) GetAzureBlobStorageOutputBufferSize() *int64 {
	if o == nil {
		return nil
	}
	return o.AzureBlobStorageOutputBufferSize
}

func (o *DestinationAzureBlobStorageUpdate) GetAzureBlobStorageSpillSize() *int64 {
	if o == nil {
		return nil
	}
	return o.AzureBlobStorageSpillSize
}

func (o *DestinationAzureBlobStorageUpdate) GetFormat() DestinationAzureBlobStorageUpdateOutputFormat {
	if o == nil {
		return DestinationAzureBlobStorageUpdateOutputFormat{}
	}
	return o.Format
}
