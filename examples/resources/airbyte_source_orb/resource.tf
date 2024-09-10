resource "airbyte_source_orb" "my_source_orb" {
  configuration = {
    api_key              = "...my_api_key..."
    end_date             = "2024-03-01T00:00:00Z"
    lookback_window_days = 0
    numeric_event_properties_keys = [
      "...",
    ]
    plan_id    = "...my_plan_id..."
    start_date = "2022-03-01T00:00:00Z"
    string_event_properties_keys = [
      "...",
    ]
    subscription_usage_grouping_key = "...my_subscription_usage_grouping_key..."
  }
  definition_id = "efa67bbe-a9f5-4a35-91bd-0fb6321f6b4c"
  name          = "Nathaniel Gorczany"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a5f8aec8-fedb-48fc-b536-7bfee523e36b"
}