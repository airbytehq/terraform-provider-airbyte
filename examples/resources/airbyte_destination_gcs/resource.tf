resource "airbyte_destination_gcs" "my_destination_gcs" {
  configuration = {
    credential = {
      destination_gcs_authentication_hmac_key = {
        credential_type    = "HMAC_KEY"
        hmac_key_access_id = "1234567890abcdefghij1234"
        hmac_key_secret    = "1234567890abcdefghij1234567890ABCDEFGHIJ"
      }
    }
    format = {
      destination_gcs_output_format_avro_apache_avro = {
        compression_codec = {
          destination_gcs_output_format_avro_apache_avro_compression_codec_bzip2 = {
            codec = "bzip2"
          }
        }
        format_type = "Avro"
      }
    }
    gcs_bucket_name   = "airbyte_sync"
    gcs_bucket_path   = "data_sync/test"
    gcs_bucket_region = "eu"
  }
  name         = "Lorena Mills"
  workspace_id = "416d119e-802e-4071-a9d4-644f9dd3d54c"
}