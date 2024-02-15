resource "airbyte_source_clickup_api" "my_source_clickupapi" {
  configuration = {
    api_token            = "...my_api_token..."
    folder_id            = "...my_folder_id..."
    include_closed_tasks = false
    list_id              = "...my_list_id..."
    space_id             = "...my_space_id..."
    team_id              = "...my_team_id..."
  }
  definition_id = "3da2fecd-2cab-429e-8bc6-002c3cc123e8"
  name          = "Brandy Doyle"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0d4d2b80-c50d-4c34-8f66-cbf0e9a05e99"
}