resource "airbyte_destination_gcs" "my_destination_gcs" {
  configuration = {
    credential = {
      credential_type    = "HMAC_KEY"
      hmac_key_access_id = "1234567890abcdefghij1234"
      hmac_key_secret    = "1234567890abcdefghij1234567890ABCDEFGHIJ"
    }
    destination_type = "gcs"
    format = {
      compression_codec = {
        codec = "bzip2"
      }
      format_type = "Avro"
    }
    gcs_bucket_name   = "airbyte_sync"
    gcs_bucket_path   = "data_sync/test"
    gcs_bucket_region = "europe-west2"
  }
  name         = "Todd Oberbrunner DDS"
  workspace_id = "688282aa-4825-462f-a22e-9817ee17cbe6"
}