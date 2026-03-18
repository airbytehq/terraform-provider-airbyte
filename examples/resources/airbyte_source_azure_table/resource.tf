resource "airbyte_source_azure_table" "my_source_azuretable" {
  configuration = {
    storage_access_key      = "...my_storage_access_key..."
    storage_account_name    = "...my_storage_account_name..."
    storage_endpoint_suffix = "core.windows.net"
  }
  definition_id = "798ae795-5189-42b6-b64e-3cb91db93338"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "7fae477e-8dc6-4668-84b6-27911d16e497"
}