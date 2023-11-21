resource "airbyte_source_clickup_api" "my_source_clickupapi" {
  configuration = {
    api_token            = "...my_api_token..."
    folder_id            = "...my_folder_id..."
    include_closed_tasks = true
    list_id              = "...my_list_id..."
    space_id             = "...my_space_id..."
    team_id              = "...my_team_id..."
  }
  definition_id = "517f0e32-c2e3-402e-ade9-2b3e43098446"
  name          = "Freddie Little"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e6422d15-b828-4621-a877-d2e625cdd80b"
}