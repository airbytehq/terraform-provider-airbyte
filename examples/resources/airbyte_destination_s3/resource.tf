resource "airbyte_destination_s3" "my_destination_s3" {
  configuration = {
    access_key_id     = "A012345678910EXAMPLE"
    file_name_pattern = "{date}"
    format = {
      avro_apache_avro = {
        additional_properties = "{ \"see\": \"documentation\" }"
        compression_codec = {
          bzip2 = {
            additional_properties = "{ \"see\": \"documentation\" }"
            codec                 = "bzip2"
          }
          no_compression = {
            additional_properties = "{ \"see\": \"documentation\" }"
            codec                 = "no compression"
          }
          snappy = {
            additional_properties = "{ \"see\": \"documentation\" }"
            codec                 = "snappy"
          }
        }
        format_type = "Avro"
      }
    }
    role_arn          = "arn:aws:iam::123456789:role/ExternalIdIsYourWorkspaceId"
    s3_bucket_name    = "airbyte_sync"
    s3_bucket_path    = "data_sync/test"
    s3_bucket_region  = "us-east-1"
    s3_endpoint       = "http://localhost:9000"
    s3_path_format    = "${NAMESPACE}/${STREAM_NAME}/${YEAR}_${MONTH}_${DAY}_${EPOCH}_"
    secret_access_key = "a012345678910ABCDEFGH/AbCdEfGhEXAMPLEKEY"
  }
  definition_id = "78e0a8ec-be25-40bf-b8ba-093bfe7a6f05"
  name          = "...my_name..."
  workspace_id  = "9842b6c1-e43f-4d6f-90dd-f293538933f0"
}