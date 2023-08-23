resource "airbyte_source_azure_table" "my_source_azuretable" {
  configuration = {
    source_type             = "azure-table"
    storage_access_key      = "...my_storage_access_key..."
    storage_account_name    = "...my_storage_account_name..."
    storage_endpoint_suffix = "core.chinacloudapi.cn"
  }
  name         = "Bobbie Thompson"
  secret_id    = "...my_secret_id..."
  workspace_id = "10331f39-81d4-4c70-8b60-7f3c93c73b9d"
}