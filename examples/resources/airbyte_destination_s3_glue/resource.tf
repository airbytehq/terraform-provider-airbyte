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
    s3_bucket_region           = "me-central-1"
    s3_endpoint                = "http://localhost:9000"
    s3_path_format             = "${NAMESPACE}/${STREAM_NAME}/${YEAR}_${MONTH}_${DAY}_${EPOCH}_"
    secret_access_key          = "a012345678910ABCDEFGH/AbCdEfGhEXAMPLEKEY"
  }
  definition_id = "c3217acb-e2ad-49f3-9864-86fc7b23d6b8"
  name          = "Billie Wisoky I"
  workspace_id  = "46c04b19-3fb2-4891-8e38-2726ed560cd3"
}