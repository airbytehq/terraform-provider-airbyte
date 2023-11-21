resource "airbyte_source_google_drive" "my_source_googledrive" {
  configuration = {
    credentials = {
      source_google_drive_authenticate_via_google_o_auth = {
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        refresh_token = "...my_refresh_token..."
      }
    }
    folder_url = "https://drive.google.com/drive/folders/1Xaz0vXXXX2enKnNYU5qSt9NS70gvMyYn"
    start_date = "2021-01-01T00:00:00.000000Z"
    streams = [
      {
        days_to_sync_if_history_is_full = 4
        format = {
          source_google_drive_avro_format = {
            double_as_string = false
          }
        }
        globs = [
          "...",
        ]
        input_schema      = "...my_input_schema..."
        name              = "Rex Pacocha"
        primary_key       = "...my_primary_key..."
        schemaless        = false
        validation_policy = "Emit Record"
      },
    ]
  }
  definition_id = "f0c4c84b-89e6-425b-ae87-6a32dc31e1b4"
  name          = "Lester Kihn"
  secret_id     = "...my_secret_id..."
  workspace_id  = "53bf2def-ea2f-4d14-9f48-d36313985539"
}