resource "airbyte_source_google_sheets" "my_source_googlesheets" {
  configuration = {
    batch_size = 7
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
  definition_id = "94f7d68d-64a8-410b-a959-587ed0c47c0f"
  name          = "Roosevelt Waters"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c0f294c1-1e4e-4993-9294-74281bb54dff"
}