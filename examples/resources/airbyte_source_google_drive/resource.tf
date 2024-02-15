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
        days_to_sync_if_history_is_full = 2
        format = {
          avro_format = {
            double_as_string = true
          }
        }
        globs = [
          "...",
        ]
        input_schema      = "...my_input_schema..."
        name              = "Delores Turner DVM"
        primary_key       = "...my_primary_key..."
        schemaless        = true
        validation_policy = "Skip Record"
      },
    ]
  }
  definition_id = "73fcf1a4-306e-4082-909d-97bfabbad367"
  name          = "Amelia Marks"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1d9c174f-ee41-4455-a2d2-7576235e52bb"
}