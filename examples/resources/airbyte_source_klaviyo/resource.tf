resource "airbyte_source_klaviyo" "my_source_klaviyo" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "klaviyo"
    start_date  = "2017-01-25T00:00:00Z"
  }
  name         = "Alvin Bartoletti"
  secret_id    = "...my_secret_id..."
  workspace_id = "f19dbf12-5ce4-4152-aab9-cd7e5224a6a0"
}