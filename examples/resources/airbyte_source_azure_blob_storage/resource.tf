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
        days_to_sync_if_history_is_full = 10
        format = {
          avro_format = {
            double_as_string = true
          }
        }
        globs = [
          "...",
        ]
        input_schema      = "...my_input_schema..."
        name              = "Dwayne Pfeffer"
        schemaless        = false
        validation_policy = "Emit Record"
      },
    ]
  }
  definition_id = "8227a333-08df-4445-b49b-e62599f17b5c"
  name          = "Pamela Schimmel"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2f7dd6ee-9c7e-4740-9902-82195430f896"
}