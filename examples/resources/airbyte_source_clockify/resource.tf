resource "airbyte_source_clockify" "my_source_clockify" {
  configuration = {
    api_key      = "...my_api_key..."
    api_url      = "...my_api_url..."
    workspace_id = "...my_workspace_id..."
  }
  definition_id = "5e6422d1-5b82-4862-9a87-7d2e625cdd80"
  name          = "Matt Hermiston"
  secret_id     = "...my_secret_id..."
  workspace_id  = "53c6fc10-ca67-4a82-bc3d-349f444d8a85"
}