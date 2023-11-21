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
    gcs_bucket_region = "us-west1"
  }
  definition_id = "37e4a59e-7bfd-41d4-96bd-14d08d4a7d5d"
  name          = "Opal D'Amore"
  workspace_id  = "153b42c3-2f48-4f6e-943a-0f0f39a6c151"
}