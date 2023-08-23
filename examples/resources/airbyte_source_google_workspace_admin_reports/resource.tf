resource "airbyte_source_google_workspace_admin_reports" "my_source_googleworkspaceadminreports" {
  configuration = {
    credentials_json = "...my_credentials_json..."
    email            = "Daron_Green@hotmail.com"
    lookback         = 2
    source_type      = "google-workspace-admin-reports"
  }
  name         = "Antoinette Wolf IV"
  secret_id    = "...my_secret_id..."
  workspace_id = "ee4fcf0c-42b7-48f1-9626-398a0dc76632"
}