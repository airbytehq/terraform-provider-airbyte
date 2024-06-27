resource "airbyte_source_orb" "my_source_orb" {
  configuration = {
    api_key              = "...my_api_key..."
    end_date             = "2024-03-01T00:00:00Z"
    lookback_window_days = 7
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
  definition_id = "124b6e7b-2083-4a37-b0c9-92762a38aa73"
  name          = "Julio Mayer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "5cb72465-1802-4161-9872-363e09a2aae6"
}