resource "airbyte_source_google_drive" "my_source_googledrive" {
  configuration = {
    credentials = {
      authenticate_via_google_o_auth = {
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        refresh_token = "...my_refresh_token..."
      }
    }
    folder_url = "https://drive.google.com/drive/folders/1Xaz0vXXXX2enKnNYU5qSt9NS70gvMyYn"
    start_date = "2021-01-01T00:00:00.000000Z"
    streams = [
      {
        days_to_sync_if_history_is_full = 5
        format = {
          avro_format = {
            double_as_string = true
          }
        }
        globs = [
          "...",
        ]
        input_schema      = "...my_input_schema..."
        name              = "Terry Zieme MD"
        primary_key       = "...my_primary_key..."
        schemaless        = false
        validation_policy = "Skip Record"
      },
    ]
  }
  definition_id = "183b00ec-7045-4956-803e-c7b8b68fdfc0"
  name          = "Miriam Deckow"
  secret_id     = "...my_secret_id..."
  workspace_id  = "fd673f59-a8d0-4acc-9948-b0061059fac1"
}