resource "airbyte_source_orb" "my_source_orb" {
  configuration = {
    api_key              = "...my_api_key..."
    lookback_window_days = 5
    numeric_event_properties_keys = [
      "...",
    ]
    plan_id     = "...my_plan_id..."
    source_type = "orb"
    start_date  = "2022-03-01T00:00:00Z"
    string_event_properties_keys = [
      "...",
    ]
    subscription_usage_grouping_key = "...my_subscription_usage_grouping_key..."
  }
  name         = "Josh Mante"
  secret_id    = "...my_secret_id..."
  workspace_id = "2c9ff574-91aa-4bfa-ae76-1f0ca4d456ef"
}