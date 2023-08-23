resource "airbyte_destination_google_sheets" "my_destination_googlesheets" {
  configuration = {
    credentials = {
      client_id     = "...my_client_id..."
      client_secret = "...my_client_secret..."
      refresh_token = "...my_refresh_token..."
    }
    destination_type = "google-sheets"
    spreadsheet_id   = "https://docs.google.com/spreadsheets/d/1hLd9Qqti3UyLXZB2aFfUWDT7BG/edit"
  }
  name         = "Angela Olson"
  workspace_id = "cdca4251-904e-4523-87e0-bc7178e4796f"
}