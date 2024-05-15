resource "airbyte_source_gridly" "my_source_gridly" {
  configuration = {
    api_key = "...my_api_key..."
    grid_id = "...my_grid_id..."
  }
  definition_id = "a00b494f-7d68-4d64-a810-b2959587ed0c"
  name          = "Dr. Jackie Schulist"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ce33c0f2-94c1-41e4-a993-d29474281bb5"
}