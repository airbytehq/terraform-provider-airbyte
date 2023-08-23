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
  name         = "Sergio Grant Sr."
  secret_id    = "...my_secret_id..."
  workspace_id = "644cf5e9-d9a4-4578-adc1-ac600dec001a"
}