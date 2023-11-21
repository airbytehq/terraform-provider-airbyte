resource "airbyte_source_glassfrog" "my_source_glassfrog" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "54ef24d0-de80-4e3d-b905-02015d2de4b8"
  name          = "Jonathon Erdman"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2b3a27b0-b342-4a10-bbc4-7ca706139037"
}