// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

type DestinationGcsOutputFormat struct {
	AvroApacheAvro                *AvroApacheAvro                              `queryParam:"inline" tfsdk:"avro_apache_avro" tfPlanOnly:"true"`
	CSVCommaSeparatedValues       *DestinationGcsCSVCommaSeparatedValues       `queryParam:"inline" tfsdk:"csv_comma_separated_values" tfPlanOnly:"true"`
	JSONLinesNewlineDelimitedJSON *DestinationGcsJSONLinesNewlineDelimitedJSON `queryParam:"inline" tfsdk:"json_lines_newline_delimited_json" tfPlanOnly:"true"`
	ParquetColumnarStorage        *DestinationGcsParquetColumnarStorage        `queryParam:"inline" tfsdk:"parquet_columnar_storage" tfPlanOnly:"true"`
}
