resource "airbyte_destination_google_sheets" "my_destination_googlesheets" {
  configuration = {
    credentials = {
      authenticate_via_google_o_auth = {
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        refresh_token = "...my_refresh_token..."
      }
    }
    spreadsheet_id = "https://docs.google.com/spreadsheets/d/1hLd9Qqti3UyLXZB2aFfUWDT7BG/edit"
  }
  definition_id = "a4cbd2d1-8dbe-4818-b8bc-b90ad782d12a"
  name          = "...my_name..."
  workspace_id  = "ac77879a-e5ab-4e85-8084-095399f78bac"
}