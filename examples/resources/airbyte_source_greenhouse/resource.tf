resource "airbyte_source_greenhouse" "my_source_greenhouse" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "47c0f9ce-33c0-4f29-8c11-e4e993d29474"
  name          = "Cassandra Carroll"
  secret_id     = "...my_secret_id..."
  workspace_id  = "54dff6cf-9b79-4e23-a888-b6bde25154a5"
}