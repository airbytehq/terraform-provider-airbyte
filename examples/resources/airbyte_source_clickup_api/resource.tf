resource "airbyte_source_clickup_api" "my_source_clickupapi" {
  configuration = {
    api_token            = "...my_api_token..."
    folder_id            = "...my_folder_id..."
    include_closed_tasks = true
    list_id              = "...my_list_id..."
    space_id             = "...my_space_id..."
    team_id              = "...my_team_id..."
  }
  definition_id = "73b75739-1086-418e-9144-5d83c494a849"
  name          = "Ms. Kristopher Hammes"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0e32c2e3-02e6-4de9-ab3e-43098446f983"
}