resource "airbyte_source_smartsheets" "my_source_smartsheets" {
  configuration = {
    credentials = {
      api_access_token = {
        access_token = "...my_access_token..."
      }
    }
    metadata_fields = [
      "sheetmodifiedAt",
    ]
    spreadsheet_id = "...my_spreadsheet_id..."
    start_datetime = "2000-01-01T13:00:00-07:00"
  }
  name         = "Beatrice Denesik"
  secret_id    = "...my_secret_id..."
  workspace_id = "fdff2deb-8cbf-4267-8a92-033b17bfcc52"
}