resource "airbyte_source_greenhouse" "my_source_greenhouse" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "greenhouse"
  }
  name         = "Kendra Schmitt III"
  secret_id    = "...my_secret_id..."
  workspace_id = "c8ca12d0-2529-4270-b8d5-722dd895b8bc"
}