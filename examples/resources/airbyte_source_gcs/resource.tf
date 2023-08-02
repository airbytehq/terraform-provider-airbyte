resource "airbyte_source_gcs" "my_source_gcs" {
  configuration = {
    gcs_bucket      = "...my_gcs_bucket..."
    gcs_path        = "...my_gcs_path..."
    service_account = "{ \"type\": \"service_account\", \"project_id\": YOUR_PROJECT_ID, \"private_key_id\": YOUR_PRIVATE_KEY, ... }"
    source_type     = "gcs"
  }
  name         = "Darin Mante"
  secret_id    = "...my_secretId..."
  workspace_id = "c9a867bc-4242-4666-9816-ddca8ef51fcb"
}