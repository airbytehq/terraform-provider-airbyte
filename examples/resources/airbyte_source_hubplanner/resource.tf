resource "airbyte_source_hubplanner" "my_source_hubplanner" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "3f80b7f5-5709-44a9-bb63-56d53391630f"
  name          = "Mr. Fred Will PhD"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4fbef253-f33a-4c13-9dc9-0f63794a97d5"
}