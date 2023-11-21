resource "airbyte_destination_google_sheets" "my_destination_googlesheets" {
  configuration = {
    credentials = {
      client_id     = "...my_client_id..."
      client_secret = "...my_client_secret..."
      refresh_token = "...my_refresh_token..."
    }
    spreadsheet_id = "https://docs.google.com/spreadsheets/d/1hLd9Qqti3UyLXZB2aFfUWDT7BG/edit"
  }
  definition_id = "a78cf13c-3589-4bc3-aaba-63d3987f09ed"
  name          = "Manuel Cronin IV"
  workspace_id  = "dddbef1f-87bb-4506-9e16-a5a735a4e180"
}