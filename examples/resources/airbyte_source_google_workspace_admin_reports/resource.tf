resource "airbyte_source_google_workspace_admin_reports" "my_source_googleworkspaceadminreports" {
  configuration = {
    credentials_json = "...my_credentials_json..."
    email            = "Bridgette_Rohan@gmail.com"
    lookback         = 10
    source_type      = "google-workspace-admin-reports"
  }
  name         = "Samantha Huels"
  secret_id    = "...my_secret_id..."
  workspace_id = "398a0dc7-6632-44cc-b06c-8ca12d025292"
}