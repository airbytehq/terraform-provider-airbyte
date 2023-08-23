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
    row_batch_size   = 100
    source_type      = "google-sheets"
    spreadsheet_id   = "https://docs.google.com/spreadsheets/d/1hLd9Qqti3UyLXZB2aFfUWDT7BG-arw2xy4HR3D-dwUb/edit"
  }
  name         = "Mae Gleichner"
  secret_id    = "...my_secret_id..."
  workspace_id = "407084f7-ab37-4cef-8222-5194db55410a"
}