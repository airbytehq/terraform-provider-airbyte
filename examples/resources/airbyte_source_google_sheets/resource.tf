resource "airbyte_source_google_sheets" "my_source_googlesheets" {
  configuration = {
    batch_size = 10
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
  definition_id = "e4145562-d275-4762-b5e5-2bb8adc8fd2a"
  name          = "Ebony McDermott PhD"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ec44e216-dff8-4929-a4d2-3a00b494f7d6"
}