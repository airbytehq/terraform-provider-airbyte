resource "airbyte_destination_s3" "my_destination_s3" {
  configuration = {
    access_key_id     = "A012345678910EXAMPLE"
    destination_type  = "s3"
    file_name_pattern = "{date}"
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
    s3_bucket_region  = "cn-northwest-1"
    s3_endpoint       = "http://localhost:9000"
    s3_path_format    = "${NAMESPACE}/${STREAM_NAME}/${YEAR}_${MONTH}_${DAY}_${EPOCH}_"
    secret_access_key = "a012345678910ABCDEFGH/AbCdEfGhEXAMPLEKEY"
  }
  name         = "Freddie King"
  workspace_id = "922a57a1-5be3-4e06-8807-e2b6e3ab8845"
}