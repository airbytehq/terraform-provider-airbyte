resource "airbyte_source_microsoft_onedrive" "my_source_microsoftonedrive" {
  configuration = {
    credentials = {
      authenticate_via_microsoft_o_auth = {
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        refresh_token = "...my_refresh_token..."
        tenant_id     = "...my_tenant_id..."
      }
    }
    drive_name   = "...my_drive_name..."
    folder_path  = "...my_folder_path..."
    search_scope = "ALL"
    start_date   = "2021-01-01T00:00:00.000000Z"
    streams = [
      {
        days_to_sync_if_history_is_full = 2
        format = {
          avro_format = {
            double_as_string = false
          }
        }
        globs = [
          "...",
        ]
        input_schema      = "...my_input_schema..."
        name              = "Krystal Hamill"
        primary_key       = "...my_primary_key..."
        schemaless        = true
        validation_policy = "Emit Record"
      },
    ]
  }
  definition_id = "598db92c-72d5-441f-9389-28a50561c1cc"
  name          = "Miss Judith McGlynn MD"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d7b3d761-e29e-4f26-ae07-d2b59ab56edb"
}