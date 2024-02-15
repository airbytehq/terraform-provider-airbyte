resource "airbyte_source_google_sheets" "my_source_googlesheets" {
  configuration = {
    credentials = {
      authenticate_via_google_o_auth = {
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        refresh_token = "...my_refresh_token..."
      }
    }
    names_conversion = true
    spreadsheet_id   = "https://docs.google.com/spreadsheets/d/1hLd9Qqti3UyLXZB2aFfUWDT7BG-arw2xy4HR3D-dwUb/edit"
  }
  definition_id = "6950935a-d536-4c50-8473-4e30b46b959e"
  name          = "Kerry Kulas"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ac092271-19b9-45b6-8c98-bb7037ab5561"
}