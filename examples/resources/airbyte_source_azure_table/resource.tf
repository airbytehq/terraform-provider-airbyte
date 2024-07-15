resource "airbyte_source_azure_table" "my_source_azuretable" {
  configuration = {
    storage_access_key      = "...my_storage_access_key..."
    storage_account_name    = "...my_storage_account_name..."
    storage_endpoint_suffix = "core.chinacloudapi.cn"
  }
  definition_id = "36cda3d5-1cbc-4156-a3ec-6453ce6c3cf0"
  name          = "Joseph VonRueden PhD"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e16b8da7-b814-43f8-91cf-99c7fd70e504"
}