resource "airbyte_source_klaviyo" "my_source_klaviyo" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2017-01-25T00:00:00Z"
  }
  name         = "Jimmy Kilback"
  secret_id    = "...my_secret_id..."
  workspace_id = "06663420-a6a3-4ab4-9447-55b910e5c999"
}