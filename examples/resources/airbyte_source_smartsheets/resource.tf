resource "airbyte_source_smartsheets" "my_source_smartsheets" {
  configuration = {
    credentials = {
      source_smartsheets_authorization_method_api_access_token = {
        access_token = "...my_access_token..."
        auth_type    = "access_token"
      }
    }
    metadata_fields = [
      "sheetversion",
    ]
    source_type    = "smartsheets"
    spreadsheet_id = "...my_spreadsheet_id..."
    start_datetime = "2000-01-01T13:00:00-07:00"
  }
  name         = "Michele Muller"
  secret_id    = "...my_secret_id..."
  workspace_id = "0cfd5d69-89b7-4206-8510-77d19ea83d49"
}