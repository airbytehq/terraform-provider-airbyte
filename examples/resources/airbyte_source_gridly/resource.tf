resource "airbyte_source_gridly" "my_source_gridly" {
  configuration = {
    api_key     = "...my_api_key..."
    grid_id     = "...my_grid_id..."
    source_type = "gridly"
  }
  name         = "Edward Jast"
  workspace_id = "ca12d025-2927-40b8-9572-2dd895b8bcf2"
}