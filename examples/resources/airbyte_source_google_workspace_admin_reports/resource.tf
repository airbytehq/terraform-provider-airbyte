resource "airbyte_source_google_workspace_admin_reports" "my_source_googleworkspaceadminreports" {
  configuration = {
    credentials_json = "...my_credentials_json..."
    email            = "Golden96@gmail.com"
    lookback         = 8
  }
  name         = "Lewis Murphy"
  secret_id    = "...my_secret_id..."
  workspace_id = "dd854e0c-39c2-42fe-97df-57adf10725ff"
}