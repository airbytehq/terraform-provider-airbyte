resource "airbyte_source_gridly" "my_source_gridly" {
  configuration = {
    api_key = "...my_api_key..."
    grid_id = "...my_grid_id..."
  }
  definition_id = "f384ec60-4057-4d04-9191-8db5cccbbbdb"
  name          = "Rebecca Boehm"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4f99d677-45af-4b65-b172-0bd7a7ec1916"
}