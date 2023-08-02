resource "airbyte_source_gridly" "my_source_gridly" {
  configuration = {
    api_key     = "...my_api_key..."
    grid_id     = "...my_grid_id..."
    source_type = "gridly"
  }
  name         = "Theresa Collier"
  secret_id    = "...my_secretId..."
  workspace_id = "895b8bcf-24db-4959-a933-52f74533994d"
}