resource "airbyte_destination_s3_glue" "my_destination_s3glue" {
  configuration = {
    access_key_id     = "A012345678910EXAMPLE"
    file_name_pattern = "{date}"
    format = {
      json_lines_newline_delimited_json = {
        compression = {
          # ...
        }
        flattening  = "No flattening"
        format_type = "JSONL"
      }
    }
    glue_database              = "airbyte_database"
    glue_serialization_library = "org.openx.data.jsonserde.JsonSerDe"
    s3_bucket_name             = "airbyte_sync"
    s3_bucket_path             = "data_sync/test"
    s3_bucket_region           = "us-gov-west-1"
    s3_endpoint                = "http://localhost:9000"
    s3_path_format             = "${NAMESPACE}/${STREAM_NAME}/${YEAR}_${MONTH}_${DAY}_${EPOCH}_"
    secret_access_key          = "a012345678910ABCDEFGH/AbCdEfGhEXAMPLEKEY"
  }
  definition_id = "7a9c505b-1990-4b38-b243-1c254ff78c36"
  name          = "...my_name..."
  workspace_id  = "e7df4138-2176-42e6-aa11-ed72fe60b365"
}