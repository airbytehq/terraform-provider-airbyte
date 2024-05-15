resource "airbyte_source_google_sheets" "my_source_googlesheets" {
  configuration = {
    batch_size = 8
    credentials = {
      authenticate_via_google_o_auth = {
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        refresh_token = "...my_refresh_token..."
      }
    }
    names_conversion = false
    spreadsheet_id   = "https://docs.google.com/spreadsheets/d/1hLd9Qqti3UyLXZB2aFfUWDT7BG-arw2xy4HR3D-dwUb/edit"
  }
  definition_id = "c27a8c72-c3eb-45dc-9571-4db07d769873"
  name          = "Edith Lesch"
  secret_id     = "...my_secret_id..."
  workspace_id  = "53a479a0-805f-4f17-93bf-9b799d63199b"
}