resource "airbyte_source_google_workspace_admin_reports" "my_source_googleworkspaceadminreports" {
  configuration = {
    credentials_json = "...my_credentials_json..."
    email            = "Daisha.Halvorson12@gmail.com"
    lookback         = 8
  }
  definition_id = "b8adc8fd-2a7f-4940-9ec4-4e216dff8929"
  name          = "Francisco Swaniawski"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a00b494f-7d68-4d64-a810-b2959587ed0c"
}