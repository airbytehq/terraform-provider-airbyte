resource "airbyte_source_orbit" "my_source_orbit" {
  configuration = {
    api_token  = "...my_api_token..."
    start_date = "...my_start_date..."
    workspace  = "...my_workspace..."
  }
  definition_id = "2d9d7702-5755-4e69-95c5-7652df199422"
  name          = "Danny Jakubowski"
  secret_id     = "...my_secret_id..."
  workspace_id  = "976b741d-bfaf-4bdd-b49a-fd0cd95bcfe3"
}