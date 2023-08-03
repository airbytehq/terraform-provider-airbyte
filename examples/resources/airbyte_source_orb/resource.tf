resource "airbyte_source_orb" "my_source_orb" {
  configuration = {
    api_key              = "...my_api_key..."
    lookback_window_days = 3
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
  name         = "Nelson Hagenes V"
  workspace_id = "53b44bd3-c431-459d-b3e5-953c00113986"
}