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
  name         = "Frances Vandervort"
  secret_id    = "...my_secret_id..."
  workspace_id = "d074009e-f8d2-49de-9dd7-097b5da08c57"
}