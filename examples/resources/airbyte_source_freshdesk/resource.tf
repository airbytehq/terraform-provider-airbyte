resource "airbyte_source_freshdesk" "my_source_freshdesk" {
  configuration = {
    api_key                 = "...my_api_key..."
    domain                  = "myaccount.freshdesk.com"
    lookback_window_in_days = 3
    requests_per_minute     = 3
    start_date              = "2020-12-01T00:00:00Z"
  }
  definition_id = "68cfaeff-480d-4f14-bee1-0f8279e427b2"
  name          = "Dr. Curtis Glover PhD"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4b428b10-c62a-4eea-b6a1-6bc0f1be5567"
}