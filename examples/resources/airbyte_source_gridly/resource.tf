resource "airbyte_source_gridly" "my_source_gridly" {
  configuration = {
    api_key     = "...my_api_key..."
    grid_id     = "...my_grid_id..."
    source_type = "gridly"
  }
  name         = "Ernest Grimes"
  secret_id    = "...my_secret_id..."
  workspace_id = "95969335-2f74-4533-994d-78de3b6e9389"
}