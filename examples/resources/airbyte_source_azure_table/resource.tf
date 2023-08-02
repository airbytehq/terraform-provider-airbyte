resource "airbyte_source_azure_table" "my_source_azuretable" {
  configuration = {
    source_type             = "azure-table"
    storage_access_key      = "...my_storage_access_key..."
    storage_account_name    = "...my_storage_account_name..."
    storage_endpoint_suffix = "core.chinacloudapi.cn"
  }
  name         = "Brandy Langosh Jr."
  secret_id    = "...my_secretId..."
  workspace_id = "0efada20-0ef0-4422-ab21-64cf9ab8366c"
}