resource "airbyte_destination_gcs" "my_destination_gcs" {
  configuration = {
    credential = {
      hmac_key = {
        credential_type    = "HMAC_KEY"
        hmac_key_access_id = "1234567890abcdefghij1234"
        hmac_key_secret    = "1234567890abcdefghij1234567890ABCDEFGHIJ"
      }
    }
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
    gcs_bucket_name   = "airbyte_sync"
    gcs_bucket_path   = "data_sync/test"
    gcs_bucket_region = "asia-northeast3"
  }
  definition_id = "13f0bea6-4a23-47e4-a59e-7bfd1d496bd1"
  name          = "Christie Altenwerth"
  workspace_id  = "4a7d5d4b-2ee1-453b-82c3-2f48f6e543a0"
}