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
        days_to_sync_if_history_is_full = 6
        format = {
          avro_format = {
            double_as_string = false
          }
        }
        globs = [
          "...",
        ]
        input_schema      = "...my_input_schema..."
        name              = "Johanna Abbott"
        primary_key       = "...my_primary_key..."
        schemaless        = false
        validation_policy = "Wait for Discover"
      },
    ]
  }
  definition_id = "942704e9-3ebb-436d-8aae-a00f0c4c84b8"
  name          = "Conrad Hyatt"
  secret_id     = "...my_secret_id..."
  workspace_id  = "bae876a3-2dc3-41e1-b4b6-7e953bf2defe"
}