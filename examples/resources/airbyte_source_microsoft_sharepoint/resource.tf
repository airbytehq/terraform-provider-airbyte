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
    search_scope = "ALL"
    start_date   = "2021-01-01T00:00:00.000000Z"
    streams = [
      {
        days_to_sync_if_history_is_full = 9
        format = {
          avro_format = {
            double_as_string = true
          }
        }
        globs = [
          "...",
        ]
        input_schema                                = "...my_input_schema..."
        name                                        = "Jeremiah Bechtelar"
        recent_n_files_to_read_for_schema_discovery = 10
        schemaless                                  = false
        validation_policy                           = "Wait for Discover"
      },
    ]
  }
  definition_id = "67bbea9f-5a35-4d1b-90fb-6321f6b4ca64"
  name          = "Beverly Ondricka"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8aec8fed-b8fc-4353-a7bf-ee523e36b74e"
}