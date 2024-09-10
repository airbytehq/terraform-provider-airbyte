resource "airbyte_source_freshdesk" "my_source_freshdesk" {
  configuration = {
    api_key                 = "...my_api_key..."
    domain                  = "myaccount.freshdesk.com"
    lookback_window_in_days = 4
    requests_per_minute     = 8
    start_date              = "2020-12-01T00:00:00Z"
  }
  definition_id = "d00caee1-2c4e-465b-97e5-4a27b617a012"
  name          = "Ramon Robel"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8e1922df-283a-4614-b13a-52314031fd7b"
}