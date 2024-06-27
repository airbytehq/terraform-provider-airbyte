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
        name              = "Mrs. Alfonso Hayes"
        primary_key       = "...my_primary_key..."
        schemaless        = false
        validation_policy = "Skip Record"
      },
    ]
  }
  definition_id = "fa2ea25a-51d7-4622-a389-cc4200a4abb3"
  name          = "Bobbie McCullough"
  secret_id     = "...my_secret_id..."
  workspace_id  = "11cc7be3-e8ba-4718-8dc0-5c92c2050fdf"
}