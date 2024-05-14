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
    gcs_bucket_region = "us-east4"
  }
  definition_id = "fa9c0130-5655-43a4-a50c-dde3bcff11f6"
  name          = "Angela Will"
  workspace_id  = "23b2f88e-15f8-468b-b037-297dcd66bcb9"
}