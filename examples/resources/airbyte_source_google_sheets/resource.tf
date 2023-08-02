resource "airbyte_source_google_sheets" "my_source_googlesheets" {
  configuration = {
    credentials = {
      source_google_sheets_authentication_authenticate_via_google_o_auth_ = {
        auth_type     = "Client"
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        refresh_token = "...my_refresh_token..."
      }
    }
    row_batch_size = 10
    source_type    = "google-sheets"
    spreadsheet_id = "https://docs.google.com/spreadsheets/d/1hLd9Qqti3UyLXZB2aFfUWDT7BG-arw2xy4HR3D-dwUb/edit"
  }
  name         = "Jeffrey Gutmann"
  secret_id    = "...my_secretId..."
  workspace_id = "d2224656-9462-4407-884f-7ab37cef0222"
}