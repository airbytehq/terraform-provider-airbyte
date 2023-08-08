resource "airbyte_destination_meilisearch" "my_destination_meilisearch" {
  configuration = {
    api_key          = "...my_api_key..."
    destination_type = "meilisearch"
    host             = "...my_host..."
  }
  name         = "Wendy Breitenberg"
  workspace_id = "e35b60eb-1ea4-4265-95ba-3c28744ed53b"
}