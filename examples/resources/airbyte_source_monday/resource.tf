resource "airbyte_source_monday" "my_source_monday" {
  configuration = {
    credentials = {
      source_monday_authorization_method_api_token = {
        api_token = "...my_api_token..."
        auth_type = "api_token"
      }
    }
    source_type = "monday"
  }
  name         = "Lynda Padberg"
  secret_id    = "...my_secret_id..."
  workspace_id = "cb6682cb-70f8-4cfd-9fb6-e91b9a9f7484"
}