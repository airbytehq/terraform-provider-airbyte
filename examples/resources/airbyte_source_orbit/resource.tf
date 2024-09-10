resource "airbyte_source_orbit" "my_source_orbit" {
  configuration = {
    api_token  = "...my_api_token..."
    start_date = "...my_start_date..."
    workspace  = "...my_workspace..."
  }
  definition_id = "74e8f7b8-37d7-46b0-aa3d-797c2fd02395"
  name          = "Glenda Boyer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "206b8fda-8b48-4bf3-b0e9-631ebcafaa2e"
}