resource "airbyte_source_lokalise" "my_source_lokalise" {
  configuration = {
    api_key    = "...my_api_key..."
    project_id = "...my_project_id..."
  }
  definition_id = "1403cfd9-15cc-453a-a1f1-c37b350ebb39"
  name          = "Ryan Ruecker"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f963f1e6-164c-4c87-88ff-77a58933f773"
}