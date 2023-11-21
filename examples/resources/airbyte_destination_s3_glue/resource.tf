resource "airbyte_destination_s3_glue" "my_destination_s3glue" {
  configuration = {
    access_key_id     = "A012345678910EXAMPLE"
    file_name_pattern = "{sync_id}"
    format = {
      destination_s3_glue_json_lines_newline_delimited_json = {
        compression = {
          destination_s3_glue_gzip = {
            compression_type = "GZIP"
          }
        }
        flattening  = "Root level flattening"
        format_type = "JSONL"
      }
    }
    glue_database              = "airbyte_database"
    glue_serialization_library = "org.apache.hive.hcatalog.data.JsonSerDe"
    s3_bucket_name             = "airbyte_sync"
    s3_bucket_path             = "data_sync/test"
    s3_bucket_region           = "eu-central-1"
    s3_endpoint                = "http://localhost:9000"
    s3_path_format             = "${NAMESPACE}/${STREAM_NAME}/${YEAR}_${MONTH}_${DAY}_${EPOCH}_"
    secret_access_key          = "a012345678910ABCDEFGH/AbCdEfGhEXAMPLEKEY"
  }
  definition_id = "2f8e06ef-6fed-4365-9e7d-5496735da213"
  name          = "Jordan Johnston"
  workspace_id  = "b9fef8f5-3876-4e3d-a30a-86e4df19faac"
}