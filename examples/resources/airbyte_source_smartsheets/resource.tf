resource "airbyte_source_smartsheets" "my_source_smartsheets" {
  configuration = {
    credentials = {
      api_access_token = {
        access_token = "...my_access_token..."
      }
    }
    metadata_fields = [
      "row_created_by",
    ]
    spreadsheet_id = "...my_spreadsheet_id..."
    start_datetime = "2000-01-01T13:00:00"
  }
  definition_id = "1fb8be04-16cb-449d-a06c-239e7af3ca2c"
  name          = "Shawn Pfannerstill"
  secret_id     = "...my_secret_id..."
  workspace_id  = "92d74588-9040-4904-b267-ce86a322e02b"
}