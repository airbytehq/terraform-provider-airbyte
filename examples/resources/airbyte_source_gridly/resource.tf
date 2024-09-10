resource "airbyte_source_gridly" "my_source_gridly" {
  configuration = {
    api_key = "...my_api_key..."
    grid_id = "...my_grid_id..."
  }
  definition_id = "d08074e1-7a64-4885-b11a-b94fe75a513e"
  name          = "Ruth Marquardt"
  secret_id     = "...my_secret_id..."
  workspace_id  = "793827c0-6dd8-46b4-bbde-6ae53955108c"
}