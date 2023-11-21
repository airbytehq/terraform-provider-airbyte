resource "airbyte_source_smartsheets" "my_source_smartsheets" {
  configuration = {
    credentials = {
      api_access_token = {
        access_token = "...my_access_token..."
      }
    }
    metadata_fields = [
      "row_number",
    ]
    spreadsheet_id = "...my_spreadsheet_id..."
    start_datetime = "2000-01-01T13:00:00"
  }
  definition_id = "a6744848-ac2b-404b-aae9-e175304065f6"
  name          = "Tara King"
  secret_id     = "...my_secret_id..."
  workspace_id  = "901f87c9-df1a-4f8f-9013-d5d0cf403b28"
}