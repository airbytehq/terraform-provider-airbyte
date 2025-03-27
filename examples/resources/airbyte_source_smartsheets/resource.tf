resource "airbyte_source_smartsheets" "my_source_smartsheets" {
  configuration = {
    credentials = {
      o_auth20 = {
        access_token      = "...my_access_token..."
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2021-05-13T13:15:18.521Z"
      }
    }
    is_report = false
    metadata_fields = [
      "row_expanded"
    ]
    spreadsheet_id = "...my_spreadsheet_id..."
  }
  definition_id = "002b9562-dfe0-4357-bd10-30c9f3cda4c7"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "65f657d8-fd3b-49a9-af69-90fbc23c85f7"
}