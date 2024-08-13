resource "airbyte_source_freshdesk" "my_source_freshdesk" {
  configuration = {
    api_key                 = "...my_api_key..."
    domain                  = "myaccount.freshdesk.com"
    lookback_window_in_days = 3
    requests_per_minute     = 8
    start_date              = "2020-12-01T00:00:00Z"
  }
  definition_id = "b5882c88-1a08-478b-bdf7-e2fa4a63623e"
  name          = "Lucille Purdy"
  secret_id     = "...my_secret_id..."
  workspace_id  = "48ed6d0e-af7f-454c-bc36-9f9cb0a3dd00"
}