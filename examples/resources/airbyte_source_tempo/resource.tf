resource "airbyte_source_tempo" "my_source_tempo" {
  configuration = {
    api_token = "...my_api_token..."
  }
  definition_id = "a03eb3c0-afcc-43c8-ba6e-afbbc8e3e7db"
  name          = "Blanche Douglas"
  secret_id     = "...my_secret_id..."
  workspace_id  = "46fc1e0f-a91f-47ef-9f46-2d7c84461977"
}