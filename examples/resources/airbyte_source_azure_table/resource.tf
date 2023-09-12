resource "airbyte_source_azure_table" "my_source_azuretable" {
  configuration = {
    source_type             = "azure-table"
    storage_access_key      = "...my_storage_access_key..."
    storage_account_name    = "...my_storage_account_name..."
    storage_endpoint_suffix = "core.windows.net"
  }
  name         = "Ian Baumbach"
  secret_id    = "...my_secret_id..."
  workspace_id = "57a5b404-63a7-4d57-9f14-00e764ad7334"
}