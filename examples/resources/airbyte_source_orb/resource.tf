resource "airbyte_source_orb" "my_source_orb" {
  configuration = {
    api_key              = "...my_api_key..."
    lookback_window_days = 8
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
  definition_id = "57652df1-9942-42b3-a299-76b741dbfafb"
  name          = "Josh Feeney"
  secret_id     = "...my_secret_id..."
  workspace_id  = "afd0cd95-bcfe-4334-adc4-02aef61635af"
}