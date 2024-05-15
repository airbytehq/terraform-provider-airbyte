resource "airbyte_source_lemlist" "my_source_lemlist" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "e3c921cc-9284-4a21-955c-54910609be9a"
  name          = "Ivan Grimes"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b07bcaf1-3ed5-4606-ac59-e7c8aeeeb09f"
}