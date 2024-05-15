resource "airbyte_source_clickup_api" "my_source_clickupapi" {
  configuration = {
    api_token            = "...my_api_token..."
    folder_id            = "...my_folder_id..."
    include_closed_tasks = false
    list_id              = "...my_list_id..."
    space_id             = "...my_space_id..."
    team_id              = "...my_team_id..."
  }
  definition_id = "9b9fbaef-8e47-4490-988d-0e2939574a68"
  name          = "Delia Watsica"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4b87a1fb-187d-4332-a3d8-0bb99362d2f4"
}