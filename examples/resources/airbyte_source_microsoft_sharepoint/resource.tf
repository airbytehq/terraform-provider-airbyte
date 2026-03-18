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
    delivery_method = {
      replicate_records = {
        # ...
      }
    }
    folder_path  = "."
    search_scope = "ALL"
    site_url     = ""
    start_date   = "2021-01-01T00:00:00.000000Z"
    streams = [
      {
        days_to_sync_if_history_is_full = 3
        format = {
          jsonl_format = {
            # ...
          }
        }
        globs = [
          "..."
        ]
        input_schema                                = "...my_input_schema..."
        name                                        = "...my_name..."
        primary_key                                 = "...my_primary_key..."
        recent_n_files_to_read_for_schema_discovery = 7
        schemaless                                  = false
        validation_policy                           = "Emit Record"
      }
    ]
  }
  definition_id = "59353119-f0f2-4e5a-a8ba-15d887bc34f6"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "27c9b886-94de-4d83-9b82-5954db7af16b"
}