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
        days_to_sync_if_history_is_full = 4
        format = {
          avro_format = {
            double_as_string = true
          }
        }
        globs = [
          "...",
        ]
        input_schema      = "...my_input_schema..."
        name              = "Ramon Reinger"
        primary_key       = "...my_primary_key..."
        schemaless        = true
        validation_policy = "Wait for Discover"
      },
    ]
  }
  definition_id = "af825bea-4ec8-47aa-bfeb-9ea290f7e9f4"
  name          = "Gertrude Hoeger"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2b69c61d-27bb-4ad3-b0bf-8ca743bfb150"
}