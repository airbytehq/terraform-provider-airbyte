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
        name              = "Adrienne Mraz DDS"
        schemaless        = true
        validation_policy = "Skip Record"
      },
    ]
  }
  definition_id = "284a2115-5c54-4910-a09b-e9a984e4b07b"
  name          = "Mrs. Rex Witting"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d5606ac5-9e7c-48ae-aeb0-9ffd3753fe46"
}