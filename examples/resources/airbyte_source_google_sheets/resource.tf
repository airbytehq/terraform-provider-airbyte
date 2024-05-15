resource "airbyte_source_google_sheets" "my_source_googlesheets" {
  configuration = {
    batch_size = 3
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
  definition_id = "c7c577af-1e5b-4add-9274-7bbc7f241709"
  name          = "Merle Greenfelder"
  secret_id     = "...my_secret_id..."
  workspace_id  = "165bc484-0e7f-4b5d-b254-77f370b0ec7c"
}