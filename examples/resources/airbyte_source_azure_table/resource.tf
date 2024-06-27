resource "airbyte_source_azure_table" "my_source_azuretable" {
  configuration = {
    storage_access_key      = "...my_storage_access_key..."
    storage_account_name    = "...my_storage_account_name..."
    storage_endpoint_suffix = "core.chinacloudapi.cn"
  }
  definition_id = "f4f64874-e62c-458d-8792-fd48887cb19c"
  name          = "Vickie Ullrich"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b4573d66-d007-4e52-a2e4-396e7403ea2d"
}