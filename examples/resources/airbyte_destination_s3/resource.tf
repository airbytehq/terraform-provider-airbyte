resource "airbyte_destination_s3" "my_destination_s3" {
  configuration = {
    access_key_id     = "A012345678910EXAMPLE"
    destination_type  = "s3"
    file_name_pattern = "{sync_id}"
    format = {
      compression_codec = {
        codec = "bzip2"
      }
      format_type = "Avro"
    }
    s3_bucket_name    = "airbyte_sync"
    s3_bucket_path    = "data_sync/test"
    s3_bucket_region  = "us-west-2"
    s3_endpoint       = "http://localhost:9000"
    s3_path_format    = "${NAMESPACE}/${STREAM_NAME}/${YEAR}_${MONTH}_${DAY}_${EPOCH}_"
    secret_access_key = "a012345678910ABCDEFGH/AbCdEfGhEXAMPLEKEY"
  }
  name         = "Dorothy Stanton"
  workspace_id = "db5a3418-1430-4104-a181-3d5208ece7e2"
}