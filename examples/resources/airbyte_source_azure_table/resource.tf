resource "airbyte_source_azure_table" "my_source_azuretable" {
  configuration = {
    storage_access_key      = "...my_storage_access_key..."
    storage_account_name    = "...my_storage_account_name..."
    storage_endpoint_suffix = "core.windows.net"
  }
  definition_id = "45f49be6-2599-4f17-b5c6-1c8d2f7dd6ee"
  name          = "Earnest Kunde"
  secret_id     = "...my_secret_id..."
  workspace_id  = "40190282-1954-430f-8964-a321f431fb3a"
}