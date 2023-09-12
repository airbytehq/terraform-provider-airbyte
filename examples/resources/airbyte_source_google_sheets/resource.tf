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
    names_conversion = true
    source_type      = "google-sheets"
    spreadsheet_id   = "https://docs.google.com/spreadsheets/d/1hLd9Qqti3UyLXZB2aFfUWDT7BG-arw2xy4HR3D-dwUb/edit"
  }
  name         = "Irene Davis"
  secret_id    = "...my_secret_id..."
  workspace_id = "194db554-10ad-4c66-9af9-0a26c7cdc981"
}