resource "airbyte_source_gcs" "my_source_gcs" {
  configuration = {
    gcs_bucket      = "...my_gcs_bucket..."
    gcs_path        = "...my_gcs_path..."
    service_account = "{ \"type\": \"service_account\", \"project_id\": YOUR_PROJECT_ID, \"private_key_id\": YOUR_PRIVATE_KEY, ... }"
    source_type     = "gcs"
  }
  name         = "Olga Blanda"
  secret_id    = "...my_secret_id..."
  workspace_id = "dca8ef51-fcb4-4c59-bec1-2cdaad0ec7af"
}