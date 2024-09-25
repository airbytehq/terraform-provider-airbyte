resource "airbyte_source_smartsheets" "my_source_smartsheets" {
  configuration = {
    credentials = {
      api_access_token = {
        access_token = "...my_access_token..."
      }
    }
    metadata_fields = [
      "sheetcreatedAt",
    ]
    spreadsheet_id = "...my_spreadsheet_id..."
  }
  definition_id = "1b079c0c-4f41-4192-8e56-2c711d3ef646"
  name          = "Donnie Kertzmann III"
  secret_id     = "...my_secret_id..."
  workspace_id  = "84e97a85-2f0c-4d22-882d-9facb8adccb7"
}