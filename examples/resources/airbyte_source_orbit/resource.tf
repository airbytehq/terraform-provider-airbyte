resource "airbyte_source_orbit" "my_source_orbit" {
  configuration = {
    api_token  = "...my_api_token..."
    start_date = "...my_start_date..."
    workspace  = "...my_workspace..."
  }
  definition_id = "9f94f985-aa22-4e67-bc77-be4e4244a41c"
  name          = "Warren Dare"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4893048e-9c1a-4f99-a1b1-c883a572712d"
}