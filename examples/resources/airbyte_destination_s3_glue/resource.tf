resource "airbyte_destination_s3_glue" "my_destination_s3glue" {
  configuration = {
    access_key_id     = "A012345678910EXAMPLE"
    file_name_pattern = "{date:yyyy_MM}"
    format = {
      json_lines_newline_delimited_json = {
        compression = {
          gzip = {
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
    s3_bucket_region           = "ap-southeast-4"
    s3_endpoint                = "http://localhost:9000"
    s3_path_format             = "${NAMESPACE}/${STREAM_NAME}/${YEAR}_${MONTH}_${DAY}_${EPOCH}_"
    secret_access_key          = "a012345678910ABCDEFGH/AbCdEfGhEXAMPLEKEY"
  }
  definition_id = "674ad28d-ce71-4d7f-9713-664c8ab088c2"
  name          = "Maxine Tromp I"
  workspace_id  = "96f34075-45d5-4006-86d0-4e608039bc7e"
}