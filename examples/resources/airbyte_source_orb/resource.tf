resource "airbyte_source_orb" "my_source_orb" {
  configuration = {
    api_key              = "...my_api_key..."
    end_date             = "2024-03-01T00:00:00Z"
    lookback_window_days = 9
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
  definition_id = "6378e724-3c02-41bc-873a-bf4dfebd414e"
  name          = "Mrs. Monique Jenkins"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6b3fca03-d92c-4b14-9102-64179a40301b"
}