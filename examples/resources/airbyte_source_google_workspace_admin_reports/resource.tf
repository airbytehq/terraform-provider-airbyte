resource "airbyte_source_google_workspace_admin_reports" "my_source_googleworkspaceadminreports" {
  configuration = {
    credentials_json = "...my_credentials_json..."
    email            = "Karlee.Berge73@yahoo.com"
    lookback         = 7
    source_type      = "google-workspace-admin-reports"
  }
  name         = "Sylvia Schimmel"
  secret_id    = "...my_secretId..."
  workspace_id = "a348c31b-f407-4ee4-bcf0-c42b78f15626"
}