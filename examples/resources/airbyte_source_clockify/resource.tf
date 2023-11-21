resource "airbyte_source_clockify" "my_source_clockify" {
  configuration = {
    api_key      = "...my_api_key..."
    api_url      = "...my_api_url..."
    workspace_id = "...my_workspace_id..."
  }
  definition_id = "a5ff53c6-fc10-4ca6-ba82-7c3d349f444d"
  name          = "Julius Lockman"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9d8494dc-faea-4550-8380-1e9f446900c8"
}