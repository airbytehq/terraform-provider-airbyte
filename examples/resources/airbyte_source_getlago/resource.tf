resource "airbyte_source_getlago" "my_source_getlago" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "getlago"
  }
  name         = "Myra Hills"
  secret_id    = "...my_secretId..."
  workspace_id = "ec12cdaa-d0ec-47af-adbd-80df448a47f9"
}