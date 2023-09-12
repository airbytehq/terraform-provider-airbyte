resource "airbyte_source_clickup_api" "my_source_clickupapi" {
  configuration = {
    api_token            = "...my_api_token..."
    folder_id            = "...my_folder_id..."
    include_closed_tasks = true
    list_id              = "...my_list_id..."
    source_type          = "clickup-api"
    space_id             = "...my_space_id..."
    team_id              = "...my_team_id..."
  }
  name         = "Mr. Jack Gottlieb"
  secret_id    = "...my_secret_id..."
  workspace_id = "b0960a66-8151-4a47-aaf9-23c5949f83f3"
}