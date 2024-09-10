resource "airbyte_source_hubplanner" "my_source_hubplanner" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "59e04a86-9e9d-4149-b3b0-4e32dc649b6b"
  name          = "Dwight Ward"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7d0de0f8-a2b5-47ad-9e20-e75111fd0612"
}