resource "airbyte_source_gridly" "my_source_gridly" {
  configuration = {
    api_key = "...my_api_key..."
    grid_id = "...my_grid_id..."
  }
  name         = "Mr. Kenny Rohan"
  secret_id    = "...my_secret_id..."
  workspace_id = "cb908523-df16-4a0c-8499-1982a682b0a7"
}