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
        legacy_prefix     = "...my_legacy_prefix..."
        name              = "Brendan Crist II"
        primary_key       = "...my_primary_key..."
        schemaless        = true
        validation_policy = "Emit Record"
      },
    ]
  }
  definition_id = "0208e036-b268-4d75-8466-c963e10b1b39"
  name          = "Karla Luettgen"
  secret_id     = "...my_secret_id..."
  workspace_id  = "cdf8db6a-4f7e-4237-91b2-60f5d38a1edc"
}