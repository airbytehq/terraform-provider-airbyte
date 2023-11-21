resource "airbyte_destination_cumulio" "my_destination_cumulio" {
  configuration = {
    api_host  = "...my_api_host..."
    api_key   = "...my_api_key..."
    api_token = "...my_api_token..."
  }
  definition_id = "c0eb8223-613d-423c-a875-293aec4aa100"
  name          = "Felipe Champlin"
  workspace_id  = "22581a88-452d-4e7c-b5eb-92a9e952da29"
}