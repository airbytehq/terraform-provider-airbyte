resource "airbyte_destination_s3_glue" "my_destination_s3glue" {
  configuration = {
    access_key_id     = "A012345678910EXAMPLE"
    file_name_pattern = "{date}"
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
    glue_serialization_library = "org.apache.hive.hcatalog.data.JsonSerDe"
    s3_bucket_name             = "airbyte_sync"
    s3_bucket_path             = "data_sync/test"
    s3_bucket_region           = "me-central-1"
    s3_endpoint                = "http://localhost:9000"
    s3_path_format             = "${NAMESPACE}/${STREAM_NAME}/${YEAR}_${MONTH}_${DAY}_${EPOCH}_"
    secret_access_key          = "a012345678910ABCDEFGH/AbCdEfGhEXAMPLEKEY"
  }
  definition_id = "3217acbe-2ad9-4f31-8648-6fc7b23d6b84"
  name          = "Mrs. Van Gislason"
  workspace_id  = "6c04b193-fb28-4918-a382-726ed560cd3f"
}