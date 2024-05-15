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
        days_to_sync_if_history_is_full = 1
        format = {
          avro_format = {
            double_as_string = false
          }
        }
        globs = [
          "...",
        ]
        input_schema      = "...my_input_schema..."
        name              = "Mr. Alma Barton"
        primary_key       = "...my_primary_key..."
        schemaless        = false
        validation_policy = "Emit Record"
      },
    ]
  }
  definition_id = "d3cb5eaa-64b8-46a4-adbb-b853ec4b5e6a"
  name          = "Dr. Billie Predovic"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9003de8d-a443-4bfa-add2-9a6dff6cb6bf"
}