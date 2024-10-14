resource "airbyte_source_clockify" "my_source_clockify" {
  configuration = {
    api_key      = "...my_api_key..."
    api_url      = "...my_api_url..."
    workspace_id = "...my_workspace_id..."
  }
  definition_id = "f9c93fdb-ee6e-46a3-848c-e8a9238f75c9"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "8009b55e-5316-40ab-953e-a4f6f7d982bb"
}