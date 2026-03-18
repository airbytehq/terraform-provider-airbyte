resource "airbyte_source_freshdesk" "my_source_freshdesk" {
  configuration = {
    additional_properties   = "{ \"see\": \"documentation\" }"
    api_key                 = "...my_api_key..."
    domain                  = "myaccount.freshdesk.com"
    lookback_window_in_days = 14
    rate_limit_plan = {
      pro_plan = {
        # ...
      }
    }
    requests_per_minute = 0
    start_date          = "2020-12-01T00:00:00Z"
  }
  definition_id = "ec4b9503-13cb-48ab-a4ab-6ade4be46567"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "b2cdea40-9812-46df-a900-c64c52ad9f81"
}