resource "airbyte_source_microsoft_sharepoint" "my_source_microsoftsharepoint" {
  configuration = {
    credentials = {
      authenticate_via_microsoft_o_auth = {
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        refresh_token = "...my_refresh_token..."
        tenant_id     = "...my_tenant_id..."
      }
    }
    folder_path  = "...my_folder_path..."
    search_scope = "ACCESSIBLE_DRIVES"
    start_date   = "2021-01-01T00:00:00.000000Z"
    streams = [
      {
        days_to_sync_if_history_is_full = 7
        format = {
          avro_format = {
            double_as_string = true
          }
        }
        globs = [
          "...",
        ]
        input_schema      = "...my_input_schema..."
        name              = "Nicholas Hartmann"
        primary_key       = "...my_primary_key..."
        schemaless        = true
        validation_policy = "Emit Record"
      },
    ]
  }
  definition_id = "ec87aaff-eb9e-4a29-8f7e-9f4166b42b69"
  name          = "Elmer Brekke"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7bbad3f0-bf8c-4a74-bbfb-1506e5d6deb8"
}