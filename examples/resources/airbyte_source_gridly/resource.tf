resource "airbyte_source_gridly" "my_source_gridly" {
  configuration = {
    api_key = "...my_api_key..."
    grid_id = "...my_grid_id..."
  }
  definition_id = "abbad367-1a9c-4a1d-9c17-4fee4145562d"
  name          = "Nellie Hessel"
  secret_id     = "...my_secret_id..."
  workspace_id  = "235e52bb-8adc-48fd-aa7f-940dec44e216"
}