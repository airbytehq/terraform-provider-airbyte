resource "airbyte_source_azure_table" "my_source_azuretable" {
  configuration = {
    storage_access_key      = "...my_storage_access_key..."
    storage_account_name    = "...my_storage_account_name..."
    storage_endpoint_suffix = "core.chinacloudapi.cn"
  }
  definition_id = "50959a4f-a50e-4807-886b-d0cbf5314eea"
  name          = "Lana Nienow MD"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a3736727-1c78-4a9a-a960-3df323c7d784"
}