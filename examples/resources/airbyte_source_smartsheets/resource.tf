resource "airbyte_source_smartsheets" "my_source_smartsheets" {
  configuration = {
    credentials = {
      api_access_token = {
        access_token = "...my_access_token..."
      }
    }
    metadata_fields = [
      "sheetname",
    ]
    spreadsheet_id = "...my_spreadsheet_id..."
    start_datetime = "2000-01-01T13:00:00-07:00"
  }
  definition_id = "56e98a69-50f0-4007-a330-47d95358a568"
  name          = "Margarita Sipes"
  secret_id     = "...my_secret_id..."
  workspace_id  = "bec21d7e-3d24-4dfd-bd51-2342f997d059"
}