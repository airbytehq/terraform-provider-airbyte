resource "airbyte_source_google_sheets" "my_source_googlesheets" {
  configuration = {
    credentials = {
      auth_type     = "Client"
      client_id     = "...my_client_id..."
      client_secret = "...my_client_secret..."
      refresh_token = "...my_refresh_token..."
    }
    row_batch_size = 9
    source_type    = "google-sheets"
    spreadsheet_id = "https://docs.google.com/spreadsheets/d/1hLd9Qqti3UyLXZB2aFfUWDT7BG-arw2xy4HR3D-dwUb/edit"
  }
  name         = "Scott Johns"
  workspace_id = "2b271a28-9c57-4e85-8e90-439d22246569"
}