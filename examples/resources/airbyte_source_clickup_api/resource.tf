resource "airbyte_source_clickup_api" "my_source_clickupapi" {
  configuration = {
    api_token            = "...my_api_token..."
    folder_id            = "...my_folder_id..."
    include_closed_tasks = true
    list_id              = "...my_list_id..."
    space_id             = "...my_space_id..."
    team_id              = "...my_team_id..."
  }
  name         = "Karen Jacobs"
  secret_id    = "...my_secret_id..."
  workspace_id = "d04e6080-39bc-47eb-8732-a47524bb490a"
}