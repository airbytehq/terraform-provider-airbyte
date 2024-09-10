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
        days_to_sync_if_history_is_full = 0
        format = {
          avro_format = {
            double_as_string = false
          }
        }
        globs = [
          "...",
        ]
        input_schema                                = "...my_input_schema..."
        name                                        = "Rosalie Schmitt"
        primary_key                                 = "...my_primary_key..."
        recent_n_files_to_read_for_schema_discovery = 9
        schemaless                                  = false
        validation_policy                           = "Emit Record"
      },
    ]
  }
  definition_id = "2bd5eb73-d022-4a60-8737-f9f9cf17c9c1"
  name          = "Jackie Bergstrom"
  secret_id     = "...my_secret_id..."
  workspace_id  = "61900dfc-3504-41fc-9cac-22262ef24d92"
}