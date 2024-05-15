resource "airbyte_source_smartsheets" "my_source_smartsheets" {
  configuration = {
    credentials = {
      api_access_token = {
        access_token = "...my_access_token..."
      }
    }
    metadata_fields = [
      "sheetaccess_level",
    ]
    spreadsheet_id = "...my_spreadsheet_id..."
    start_datetime = "2000-01-01T13:00:00-07:00"
  }
  definition_id = "c82dc40c-a1ab-4766-b971-6f1b8331df02"
  name          = "Alberta Bergstrom"
  secret_id     = "...my_secret_id..."
  workspace_id  = "586c7cdf-b558-4f87-809d-3d1fcf2b6755"
}