resource "airbyte_source_azure_table" "my_source_azuretable" {
  configuration = {
    storage_access_key      = "...my_storage_access_key..."
    storage_account_name    = "...my_storage_account_name..."
    storage_endpoint_suffix = "core.chinacloudapi.cn"
  }
  definition_id = "ec8b4573-d66d-4007-a52a-2e4396e7403e"
  name          = "Adam Stracke V"
  secret_id     = "...my_secret_id..."
  workspace_id  = "59a4fa50-e807-4c86-bd0c-bf5314eea0fa"
}