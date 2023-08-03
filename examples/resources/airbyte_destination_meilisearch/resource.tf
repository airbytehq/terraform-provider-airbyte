resource "airbyte_destination_meilisearch" "my_destination_meilisearch" {
  configuration = {
    api_key          = "...my_api_key..."
    destination_type = "meilisearch"
    host             = "...my_host..."
  }
  name         = "Arlene Heidenreich"
  workspace_id = "4f6fbee4-1f33-4317-be35-b60eb1ea4265"
}