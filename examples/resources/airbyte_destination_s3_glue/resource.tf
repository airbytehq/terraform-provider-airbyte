resource "airbyte_destination_s3_glue" "my_destination_s3glue" {
  configuration = {
    access_key_id     = "A012345678910EXAMPLE"
    destination_type  = "s3-glue"
    file_name_pattern = "{date:yyyy_MM}"
    format = {
      compression = {
        compression_type = "GZIP"
      }
      flattening  = "No flattening"
      format_type = "JSONL"
    }
    glue_database              = "airbyte_database"
    glue_serialization_library = "org.apache.hive.hcatalog.data.JsonSerDe"
    s3_bucket_name             = "airbyte_sync"
    s3_bucket_path             = "data_sync/test"
    s3_bucket_region           = "ap-southeast-1"
    s3_endpoint                = "http://localhost:9000"
    s3_path_format             = "${NAMESPACE}/${STREAM_NAME}/${YEAR}_${MONTH}_${DAY}_${EPOCH}_"
    secret_access_key          = "a012345678910ABCDEFGH/AbCdEfGhEXAMPLEKEY"
  }
  name         = "Jennie Gutkowski DDS"
  workspace_id = "6c6e205e-16de-4ab3-bec9-578a64584273"
}