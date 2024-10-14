resource "airbyte_source_orbit" "my_source_orbit" {
  configuration = {
    api_token  = "...my_api_token..."
    start_date = "...my_start_date..."
    workspace  = "...my_workspace..."
  }
  definition_id = "21e904de-c791-4449-beb1-44ffae71a045"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "46047c03-a564-4da3-b050-d355a6b2f57e"
}