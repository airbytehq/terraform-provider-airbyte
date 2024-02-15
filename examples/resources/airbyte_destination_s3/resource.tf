resource "airbyte_destination_s3" "my_destination_s3" {
  configuration = {
    access_key_id     = "A012345678910EXAMPLE"
    file_name_pattern = "{date:yyyy_MM}"
    format = {
      avro_apache_avro = {
        compression_codec = {
          bzip2 = {
            codec = "bzip2"
          }
        }
        format_type = "Avro"
      }
    }
    s3_bucket_name    = "airbyte_sync"
    s3_bucket_path    = "data_sync/test"
    s3_bucket_region  = "me-south-1"
    s3_endpoint       = "http://localhost:9000"
    s3_path_format    = "${NAMESPACE}/${STREAM_NAME}/${YEAR}_${MONTH}_${DAY}_${EPOCH}_"
    secret_access_key = "a012345678910ABCDEFGH/AbCdEfGhEXAMPLEKEY"
  }
  definition_id = "31846ef3-6441-496a-84bb-9666e7d15e7e"
  name          = "Orville Smith"
  workspace_id  = "43586b68-9fdc-413c-a92f-cfab73b9ba5d"
}