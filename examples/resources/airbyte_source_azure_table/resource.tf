resource "airbyte_source_azure_table" "my_source_azuretable" {
  configuration = {
    storage_access_key      = "...my_storage_access_key..."
    storage_account_name    = "...my_storage_account_name..."
    storage_endpoint_suffix = "core.chinacloudapi.cn"
  }
  definition_id = "af2b0521-0208-4e03-ab26-8d758466c963"
  name          = "Justin Bauch MD"
  secret_id     = "...my_secret_id..."
  workspace_id  = "394b84ac-df8d-4b6a-8f7e-23711b260f5d"
}