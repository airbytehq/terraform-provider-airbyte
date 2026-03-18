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
    drive_name   = "OneDrive"
    folder_path  = "."
    search_scope = "ALL"
    start_date   = "2021-01-01T00:00:00.000000Z"
    streams = [
      {
        days_to_sync_if_history_is_full = 3
        format = {
          avro_format = {
            double_as_string = false
          }
        }
        globs = [
          "..."
        ]
        input_schema      = "...my_input_schema..."
        name              = "...my_name..."
        primary_key       = "...my_primary_key..."
        schemaless        = false
        validation_policy = "Emit Record"
      }
    ]
  }
  definition_id = "01d1c685-fd4a-4837-8f4c-93fe5a0d2188"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "5f69d7b2-0503-4a25-b763-9376e9939f76"
}