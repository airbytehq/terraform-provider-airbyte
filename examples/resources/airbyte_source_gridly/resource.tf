resource "airbyte_source_gridly" "my_source_gridly" {
  configuration = {
    api_key = "...my_api_key..."
    grid_id = "...my_grid_id..."
  }
  definition_id = "92c44771-2b4a-4020-8830-aabeffb8d976"
  name          = "Alice Bartell"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b440a5f2-f61a-44e4-a684-9f7bbeaaef52"
}