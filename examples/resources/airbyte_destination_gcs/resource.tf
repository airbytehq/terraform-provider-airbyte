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
      json_lines_newline_delimited_json = {
        compression = {
          # ...
        }
        format_type = "JSONL"
      }
    }
    gcs_bucket_name   = "airbyte_sync"
    gcs_bucket_path   = "data_sync/test"
    gcs_bucket_region = "australia-southeast2"
  }
  definition_id = "fbdeaa3f-58d4-41ca-a298-54ecee1615a0"
  name          = "...my_name..."
  workspace_id  = "0ffee906-5986-410b-95a7-80c6f12aeac3"
}