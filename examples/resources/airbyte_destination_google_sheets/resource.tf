resource "airbyte_destination_google_sheets" "my_destination_googlesheets" {
  configuration = {
    credentials = {
      client_id     = "...my_client_id..."
      client_secret = "...my_client_secret..."
      refresh_token = "...my_refresh_token..."
    }
    spreadsheet_id = "https://docs.google.com/spreadsheets/d/1hLd9Qqti3UyLXZB2aFfUWDT7BG/edit"
  }
  definition_id = "283384bd-87b5-4cce-b614-854333df23c5"
  name          = "Corey Abbott"
  workspace_id  = "452521a0-4787-48c2-94cd-184fd116e75f"
}