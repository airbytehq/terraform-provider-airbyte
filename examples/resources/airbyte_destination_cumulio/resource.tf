resource "airbyte_destination_cumulio" "my_destination_cumulio" {
  configuration = {
    api_host  = "...my_api_host..."
    api_key   = "...my_api_key..."
    api_token = "...my_api_token..."
  }
  definition_id = "a293962c-006a-4ece-a7c8-84619655998a"
  name          = "Roy Grimes"
  workspace_id  = "c560fc49-48d7-4191-bbd7-7158c7e04c57"
}