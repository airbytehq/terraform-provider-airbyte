resource "airbyte_destination_s3" "my_destination_s3" {
  configuration = {
    access_key_id     = "A012345678910EXAMPLE"
    file_name_pattern = "{date}"
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
    role_arn          = "arn:aws:iam::123456789:role/ExternalIdIsYourWorkspaceId"
    s3_bucket_name    = "airbyte_sync"
    s3_bucket_path    = "data_sync/test"
    s3_bucket_region  = "ap-northeast-3"
    s3_endpoint       = "http://localhost:9000"
    s3_path_format    = "${NAMESPACE}/${STREAM_NAME}/${YEAR}_${MONTH}_${DAY}_${EPOCH}_"
    secret_access_key = "a012345678910ABCDEFGH/AbCdEfGhEXAMPLEKEY"
  }
  definition_id = "bc3217ac-be2a-4d9f-b186-486fc7b23d6b"
  name          = "Kyle Luettgen"
  workspace_id  = "0346c04b-193f-4b28-918e-382726ed560c"
}