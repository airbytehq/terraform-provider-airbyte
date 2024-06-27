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
            double_as_string = false
          }
        }
        globs = [
          "...",
        ]
        input_schema      = "...my_input_schema..."
        name              = "Marianne Hartmann"
        primary_key       = "...my_primary_key..."
        schemaless        = true
        validation_policy = "Wait for Discover"
      },
    ]
  }
  definition_id = "1e5baddd-2747-4bbc-bf24-1709ce4fe165"
  name          = "Edmund Gleichner"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0e7fb5df-2547-47f3-b0b0-ec7c89bfb0cb"
}