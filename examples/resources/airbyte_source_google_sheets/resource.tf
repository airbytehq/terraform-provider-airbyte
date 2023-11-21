resource "airbyte_source_google_sheets" "my_source_googlesheets" {
  configuration = {
    credentials = {
      source_google_sheets_authenticate_via_google_o_auth = {
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        refresh_token = "...my_refresh_token..."
      }
    }
    names_conversion = true
    spreadsheet_id   = "https://docs.google.com/spreadsheets/d/1hLd9Qqti3UyLXZB2aFfUWDT7BG-arw2xy4HR3D-dwUb/edit"
  }
  definition_id = "d7698733-386b-453a-879a-0805ff1793bf"
  name          = "Roderick Kutch"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d63199bd-6b46-48c8-9ec2-1a9ab567f13c"
}