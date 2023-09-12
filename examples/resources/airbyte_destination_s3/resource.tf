resource "airbyte_destination_s3" "my_destination_s3" {
  configuration = {
    access_key_id     = "A012345678910EXAMPLE"
    destination_type  = "s3"
    file_name_pattern = "{timestamp}"
    format = {
      destination_s3_output_format_avro_apache_avro = {
        compression_codec = {
          destination_s3_output_format_avro_apache_avro_compression_codec_bzip2 = {
            codec = "bzip2"
          }
        }
        format_type = "Avro"
      }
    }
    s3_bucket_name    = "airbyte_sync"
    s3_bucket_path    = "data_sync/test"
    s3_bucket_region  = "us-west-1"
    s3_endpoint       = "http://localhost:9000"
    s3_path_format    = "${NAMESPACE}/${STREAM_NAME}/${YEAR}_${MONTH}_${DAY}_${EPOCH}_"
    secret_access_key = "a012345678910ABCDEFGH/AbCdEfGhEXAMPLEKEY"
  }
  name         = "Joyce O'Kon"
  workspace_id = "9da660ff-57bf-4aad-8f9e-fc1b4512c103"
}