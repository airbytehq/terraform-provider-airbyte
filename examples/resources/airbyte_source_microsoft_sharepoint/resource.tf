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
        days_to_sync_if_history_is_full = 0
        format = {
          avro_format = {
            double_as_string = true
          }
        }
        globs = [
          "...",
        ]
        input_schema      = "...my_input_schema..."
        name              = "Mrs. Al Schamberger"
        primary_key       = "...my_primary_key..."
        schemaless        = true
        validation_policy = "Emit Record"
      },
    ]
  }
  definition_id = "c2050fdf-2ba7-4d43-920d-3384e15ed535"
  name          = "Marilyn Kunde"
  secret_id     = "...my_secret_id..."
  workspace_id  = "faeabade-b93c-4772-879b-6069b6a28df3"
}