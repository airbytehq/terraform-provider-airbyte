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
    folder_path = "...my_folder_path..."
    start_date  = "2021-01-01T00:00:00.000000Z"
    streams = [
      {
        days_to_sync_if_history_is_full = 10
        format = {
          avro_format = {
            double_as_string = false
          }
        }
        globs = [
          "...",
        ]
        input_schema      = "...my_input_schema..."
        name              = "Josephine Heaney"
        primary_key       = "...my_primary_key..."
        schemaless        = true
        validation_policy = "Skip Record"
      },
    ]
  }
  definition_id = "8faeabad-eb93-4c77-a879-b6069b6a28df"
  name          = "Katherine McDermott"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a9203cb7-876e-475a-931f-3b4802a3b9d6"
}