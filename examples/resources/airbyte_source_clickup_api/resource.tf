resource "airbyte_source_clickup_api" "my_source_clickupapi" {
  configuration = {
    api_token            = "...my_api_token..."
    folder_id            = "...my_folder_id..."
    include_closed_tasks = false
    list_id              = "...my_list_id..."
    space_id             = "...my_space_id..."
    team_id              = "...my_team_id..."
  }
  definition_id = "39108618-e914-445d-83c4-94a849cd517f"
  name          = "Sonja Douglas"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2e302e6d-e92b-43e4-b098-446f9835e642"
}