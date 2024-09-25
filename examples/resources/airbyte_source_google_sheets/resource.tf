resource "airbyte_source_google_sheets" "my_source_googlesheets" {
  configuration = {
    batch_size = 6
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
  definition_id = "bd413d75-c669-43a6-b92e-f16650e4c312"
  name          = "Betsy Koss"
  secret_id     = "...my_secret_id..."
  workspace_id  = "566ac796-fdac-41f4-8b8f-86701054c1db"
}