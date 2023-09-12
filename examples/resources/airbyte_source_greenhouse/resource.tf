resource "airbyte_source_greenhouse" "my_source_greenhouse" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "greenhouse"
  }
  name         = "Patricia Pouros"
  secret_id    = "...my_secret_id..."
  workspace_id = "5722dd89-5b8b-4cf2-8db9-59693352f745"
}