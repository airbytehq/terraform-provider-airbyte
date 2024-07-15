resource "airbyte_source_freshdesk" "my_source_freshdesk" {
  configuration = {
    api_key                 = "...my_api_key..."
    domain                  = "myaccount.freshdesk.com"
    lookback_window_in_days = 9
    requests_per_minute     = 0
    start_date              = "2020-12-01T00:00:00Z"
  }
  definition_id = "7daef770-c81f-495c-9b8d-d2d32b37f6fe"
  name          = "Corey Schmitt MD"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4fda52f6-9543-4b86-a0d9-bb50480aaaf7"
}