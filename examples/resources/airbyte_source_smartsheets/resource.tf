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
  definition_id = "90ec6c18-f201-47e8-8b7a-8364f95e84ef"
  name          = "Cecil O'Keefe"
  secret_id     = "...my_secret_id..."
  workspace_id  = "53261882-dc6e-4a37-be2f-3a6744848ac2"
}