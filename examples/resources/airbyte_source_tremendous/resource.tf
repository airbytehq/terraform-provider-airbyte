resource "airbyte_source_tremendous" "my_source_tremendous" {
  configuration = {
    api_key     = "...my_api_key..."
    environment = "testflight"
  }
  definition_id = "2f6f8edf-4e78-4612-89ca-1648b7d90769"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "c969201b-05c4-4edd-9cef-36f36792714b"
}