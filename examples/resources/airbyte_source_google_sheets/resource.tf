resource "airbyte_source_google_sheets" "my_source_googlesheets" {
  configuration = {
    batch_size = 2
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
  definition_id = "043ef09e-61b7-45b7-a676-5eab1ad84295"
  name          = "Juana Stroman"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9bdc8b93-f80b-47f5-9709-4a97b6356d53"
}