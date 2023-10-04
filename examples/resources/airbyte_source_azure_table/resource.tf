resource "airbyte_source_azure_table" "my_source_azuretable" {
  configuration = {
    storage_access_key      = "...my_storage_access_key..."
    storage_account_name    = "...my_storage_account_name..."
    storage_endpoint_suffix = "core.chinacloudapi.cn"
  }
  name         = "Lucille Lubowitz"
  secret_id    = "...my_secret_id..."
  workspace_id = "c7b23d6b-848f-4403-86c0-4b193fb28918"
}