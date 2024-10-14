resource "airbyte_source_azure_table" "my_source_azuretable" {
  configuration = {
    storage_access_key      = "...my_storage_access_key..."
    storage_account_name    = "...my_storage_account_name..."
    storage_endpoint_suffix = "core.windows.net"
  }
  definition_id = "aaa1627f-28b1-46dd-a422-879ec3291aac"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "7fae477e-8dc6-4668-84b6-27911d16e497"
}