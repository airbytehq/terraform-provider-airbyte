resource "airbyte_source_greenhouse" "my_source_greenhouse" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "6c6167f1-e8f0-4042-b922-10b5c8f204e6"
  name          = "Clinton Kunde"
  secret_id     = "...my_secret_id..."
  workspace_id  = "47eb6bab-c0f9-4b18-b2ea-fdc453fb6a01"
}