resource "airbyte_destination_google_sheets" "my_destination_googlesheets" {
  configuration = {
    credentials = {
      client_id     = "...my_client_id..."
      client_secret = "...my_client_secret..."
      refresh_token = "...my_refresh_token..."
    }
    spreadsheet_id = "https://docs.google.com/spreadsheets/d/1hLd9Qqti3UyLXZB2aFfUWDT7BG/edit"
  }
  definition_id = "64a237e4-a59e-47bf-91d4-96bd14d08d4a"
  name          = "Marcella Hand"
  workspace_id  = "b2ee153b-42c3-42f4-8f6e-543a0f0f39a6"
}