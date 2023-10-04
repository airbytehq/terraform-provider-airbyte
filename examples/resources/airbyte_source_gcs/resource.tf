resource "airbyte_source_gcs" "my_source_gcs" {
  configuration = {
    gcs_bucket      = "...my_gcs_bucket..."
    gcs_path        = "...my_gcs_path..."
    service_account = "{ \"type\": \"service_account\", \"project_id\": YOUR_PROJECT_ID, \"private_key_id\": YOUR_PRIVATE_KEY, ... }"
  }
  name         = "Elias Botsford"
  secret_id    = "...my_secret_id..."
  workspace_id = "cd6b10d6-388d-44fd-bb9a-f007bc04191b"
}