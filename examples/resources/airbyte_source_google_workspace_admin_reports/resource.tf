resource "airbyte_source_google_workspace_admin_reports" "my_source_googleworkspaceadminreports" {
  configuration = {
    credentials_json = "...my_credentials_json..."
    email            = "Bryce_Kertzmann@gmail.com"
    lookback         = 1
  }
  definition_id = "0da401fb-0fc5-4273-8b39-994a41e4a898"
  name          = "Pat Koelpin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a7d86bdf-5bf9-41ac-b121-083728d89e35"
}