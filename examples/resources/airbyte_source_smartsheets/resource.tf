resource "airbyte_source_smartsheets" "my_source_smartsheets" {
  configuration = {
    credentials = {
      api_access_token = {
        access_token = "...my_access_token..."
      }
    }
    metadata_fields = [
      "sheetid",
    ]
    spreadsheet_id = "...my_spreadsheet_id..."
    start_datetime = "2000-01-01T13:00:00-07:00"
  }
  definition_id = "14e9ed57-541c-4361-ab0e-8c8cf11a0d25"
  name          = "Jeremiah Fritsch"
  secret_id     = "...my_secret_id..."
  workspace_id  = "fa52a9e4-75ab-4ffb-a2c1-e7b6908ecd76"
}