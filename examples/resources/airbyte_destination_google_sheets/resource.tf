resource "airbyte_destination_google_sheets" "my_destination_googlesheets" {
  configuration = {
    credentials = {
      client_id     = "...my_client_id..."
      client_secret = "...my_client_secret..."
      refresh_token = "...my_refresh_token..."
    }
    spreadsheet_id = "https://docs.google.com/spreadsheets/d/1hLd9Qqti3UyLXZB2aFfUWDT7BG/edit"
  }
  definition_id = "f0f39a6c-151a-478c-b13c-3589bc3eaba6"
  name          = "Freda Dicki"
  workspace_id  = "7f09ed83-2d18-4ddd-bef1-f87bb5069e16"
}