resource "airbyte_source_smartsheets" "my_source_smartsheets" {
  configuration = {
    credentials = {
      source_smartsheets_authorization_method_api_access_token = {
        access_token = "...my_access_token..."
        auth_type    = "access_token"
      }
    }
    source_type    = "smartsheets"
    spreadsheet_id = "...my_spreadsheet_id..."
    start_datetime = "2000-01-01T13:00:00"
  }
  name         = "Dewey Murphy"
  secret_id    = "...my_secretId..."
  workspace_id = "7b6902b8-81a9-44f6-8366-4a8f0af8c691"
}