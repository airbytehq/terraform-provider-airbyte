resource "airbyte_source_smartsheets" "my_source_smartsheets" {
  configuration = {
    credentials = {
      api_access_token = {
        access_token = "...my_access_token..."
      }
    }
    metadata_fields = [
      "sheetversion",
    ]
    spreadsheet_id = "...my_spreadsheet_id..."
    start_datetime = "2000-01-01T13:00:00"
  }
  definition_id = "9d2abec2-1d7e-43d2-8dfd-3d512342f997"
  name          = "Jose Hilpert"
  secret_id     = "...my_secret_id..."
  workspace_id  = "38a2e5fc-f99c-4418-b6fa-0cbc1b99ee1e"
}