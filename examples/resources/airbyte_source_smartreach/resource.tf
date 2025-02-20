resource "airbyte_source_smartreach" "my_source_smartreach" {
  configuration = {
    api_key = "...my_api_key..."
    teamid  = 4.87
  }
  definition_id = "a41ae699-d107-4826-908c-1954a2ea1e4e"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "45165108-38ff-4788-bf09-a5b89ef2a39b"
}