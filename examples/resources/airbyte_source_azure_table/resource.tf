resource "airbyte_source_azure_table" "my_source_azuretable" {
  configuration = {
    storage_access_key      = "...my_storage_access_key..."
    storage_account_name    = "...my_storage_account_name..."
    storage_endpoint_suffix = "core.windows.net"
  }
  definition_id = "a321f431-fb3a-4ad0-b8a3-612fcb5a7fdd"
  name          = "Warren Funk DDS"
  secret_id     = "...my_secret_id..."
  workspace_id  = "39c22fe1-7df5-47ad-b107-25ff7f1a27e8"
}