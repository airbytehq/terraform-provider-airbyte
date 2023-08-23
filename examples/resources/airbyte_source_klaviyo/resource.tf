resource "airbyte_source_klaviyo" "my_source_klaviyo" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "klaviyo"
    start_date  = "2017-01-25T00:00:00Z"
  }
  name         = "Della Trantow II"
  secret_id    = "...my_secret_id..."
  workspace_id = "2eab9cd7-e522-44a6-a0e1-23b7847ec59e"
}