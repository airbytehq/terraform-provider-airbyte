resource "airbyte_source_clickup_api" "my_source_clickupapi" {
  configuration = {
    api_token            = "...my_api_token..."
    folder_id            = "...my_folder_id..."
    include_closed_tasks = false
    list_id              = "...my_list_id..."
    space_id             = "...my_space_id..."
    team_id              = "...my_team_id..."
  }
  definition_id = "0abb376b-ce66-4a7c-8ce2-0da3e9aab714"
  name          = "Anita Schiller I"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1893e1da-46c4-4f68-9d20-5011b8862473"
}