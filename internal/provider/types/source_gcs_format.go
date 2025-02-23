// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

type SourceGcsFormat struct {
	AvroFormat                 *SourceGcsAvroFormat        `tfsdk:"avro_format" tfPlanOnly:"true"`
	CSVFormat                  *SourceGcsCSVFormat         `tfsdk:"csv_format" tfPlanOnly:"true"`
	ExcelFormat                *ExcelFormat                `tfsdk:"excel_format" tfPlanOnly:"true"`
	JsonlFormat                *SourceGcsJsonlFormat       `tfsdk:"jsonl_format" tfPlanOnly:"true"`
	ParquetFormat              *SourceGcsParquetFormat     `tfsdk:"parquet_format" tfPlanOnly:"true"`
	UnstructuredDocumentFormat *UnstructuredDocumentFormat `tfsdk:"unstructured_document_format" tfPlanOnly:"true"`
}
