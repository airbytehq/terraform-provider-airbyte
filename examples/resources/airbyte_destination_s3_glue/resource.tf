resource "airbyte_destination_s3_glue" "my_destination_s3glue" {
  configuration = {
    access_key_id     = "A012345678910EXAMPLE"
    file_name_pattern = "{timestamp}"
    format = {
      destination_s3_glue_output_format_json_lines_newline_delimited_json = {
        compression = {
          destination_s3_glue_output_format_json_lines_newline_delimited_json_compression_gzip = {
            compression_type = "GZIP"
          }
        }
        flattening  = "No flattening"
        format_type = "JSONL"
      }
    }
    glue_database              = "airbyte_database"
    glue_serialization_library = "org.openx.data.jsonserde.JsonSerDe"
    s3_bucket_name             = "airbyte_sync"
    s3_bucket_path             = "data_sync/test"
    s3_bucket_region           = "us-west-1"
    s3_endpoint                = "http://localhost:9000"
    s3_path_format             = "${NAMESPACE}/${STREAM_NAME}/${YEAR}_${MONTH}_${DAY}_${EPOCH}_"
    secret_access_key          = "a012345678910ABCDEFGH/AbCdEfGhEXAMPLEKEY"
  }
  name         = "Manuel Dickens"
  workspace_id = "bd87b5cc-e361-4485-8333-df23c5e509f4"
}