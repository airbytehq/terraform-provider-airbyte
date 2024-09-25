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
    search_scope = "ACCESSIBLE_DRIVES"
    start_date   = "2021-01-01T00:00:00.000000Z"
    streams = [
      {
        days_to_sync_if_history_is_full = 7
        format = {
          avro_format = {
            double_as_string = false
          }
        }
        globs = [
          "...",
        ]
        input_schema      = "...my_input_schema..."
        name              = "Nadine Breitenberg"
        schemaless        = false
        validation_policy = "Wait for Discover"
      },
    ]
  }
  definition_id = "cd7d939b-8b6b-42c0-920a-a8be08607521"
  name          = "Alan Brekke"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9bc9d1c8-8f1e-4e12-b8a7-db098a741266"
}