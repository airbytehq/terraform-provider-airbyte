resource "airbyte_source_clickup_api" "my_source_clickupapi" {
  configuration = {
    api_token            = "...my_api_token..."
    folder_id            = "...my_folder_id..."
    include_closed_tasks = false
    list_id              = "...my_list_id..."
    source_type          = "clickup-api"
    space_id             = "...my_space_id..."
    team_id              = "...my_team_id..."
  }
  name         = "Lowell Rippin"
  secret_id    = "...my_secretId..."
  workspace_id = "e243cf78-9ffa-4fed-a53e-5ae6e0ac184c"
}