resource "airbyte_source_ding_connect" "my_source_dingconnect" {
  configuration = {
    api_key          = "...my_api_key..."
    start_date       = "2022-12-09T19:04:36.474Z"
    x_correlation_id = "...my_x_correlation_id..."
  }
  definition_id = "1adfd7fb-6cb5-4a84-8ddd-814b8ce7d3ad"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "558fdf67-5012-4342-b710-2611587628ec"
}