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
    search_scope = "SHARED_ITEMS"
    start_date   = "2021-01-01T00:00:00.000000Z"
    streams = [
      {
        days_to_sync_if_history_is_full = 9
        format = {
          avro_format = {
            double_as_string = false
          }
        }
        globs = [
          "...",
        ]
        input_schema      = "...my_input_schema..."
        name              = "Noah Rempel"
        primary_key       = "...my_primary_key..."
        schemaless        = false
        validation_policy = "Skip Record"
      },
    ]
  }
  definition_id = "c82f283f-df1b-4362-a3ef-9cacc879ba7a"
  name          = "Steven Bernier"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7dc7c271-c504-44a2-9a4f-7e4eabe3a977"
}