resource "airbyte_source_azure_blob_storage" "my_source_azureblobstorage" {
  configuration = {
    azure_blob_storage_account_name   = "airbyte5storage"
    azure_blob_storage_container_name = "airbytetescontainername"
    azure_blob_storage_endpoint       = "blob.core.windows.net"
    credentials = {
      authenticate_via_oauth2 = {
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        refresh_token = "...my_refresh_token..."
        tenant_id     = "...my_tenant_id..."
      }
    }
    start_date = "2021-01-01T00:00:00.000000Z"
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
        legacy_prefix     = "...my_legacy_prefix..."
        name              = "Al Sanford"
        primary_key       = "...my_primary_key..."
        schemaless        = true
        validation_policy = "Wait for Discover"
      },
    ]
  }
  definition_id = "da3d51cb-c156-423e-8645-3ce6c3cf0d0e"
  name          = "Sandra Stroman III"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b8da7b81-43f8-451c-b99c-7fd70e50457d"
}