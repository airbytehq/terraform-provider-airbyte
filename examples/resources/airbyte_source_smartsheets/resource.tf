resource "airbyte_source_smartsheets" "my_source_smartsheets" {
  configuration = {
    credentials = {
      source_smartsheets_authorization_method_api_access_token = {
        access_token = "...my_access_token..."
        auth_type    = "access_token"
      }
    }
    metadata_fields = [
      "row_access_level",
    ]
    source_type    = "smartsheets"
    spreadsheet_id = "...my_spreadsheet_id..."
    start_datetime = "2000-01-01T13:00:00-07:00"
  }
  name         = "Joann Bechtelar Jr."
  secret_id    = "...my_secret_id..."
  workspace_id = "e966ec73-6d43-4194-b98c-783c92398ed3"
}