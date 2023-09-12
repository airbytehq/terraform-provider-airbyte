resource "airbyte_source_gridly" "my_source_gridly" {
  configuration = {
    api_key     = "...my_api_key..."
    grid_id     = "...my_grid_id..."
    source_type = "gridly"
  }
  name         = "Josephine McCullough"
  secret_id    = "...my_secret_id..."
  workspace_id = "d78de3b6-e938-49f5-abb7-f662550a2838"
}