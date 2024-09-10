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
        days_to_sync_if_history_is_full = 3
        format = {
          avro_format = {
            double_as_string = true
          }
        }
        globs = [
          "...",
        ]
        input_schema      = "...my_input_schema..."
        name              = "Dr. Shawna Robel"
        primary_key       = "...my_primary_key..."
        schemaless        = false
        validation_policy = "Emit Record"
      },
    ]
  }
  definition_id = "730b3999-4a41-4e4a-8985-c78fa7d86bdf"
  name          = "Kristy Wilderman MD"
  secret_id     = "...my_secret_id..."
  workspace_id  = "cb121083-728d-489e-b51e-868df1f2c5ad"
}