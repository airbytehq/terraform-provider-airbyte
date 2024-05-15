resource "airbyte_source_chartmogul" "my_source_chartmogul" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2017-01-25T00:00:00Z"
  }
  definition_id = "82a682b0-a707-44f0-96f7-2127f33f8652"
  name          = "Louis Hegmann MD"
  secret_id     = "...my_secret_id..."
  workspace_id  = "023ec122-4a7f-4fb2-a8dc-187087d37ac9"
}