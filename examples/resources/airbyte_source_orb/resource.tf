resource "airbyte_source_orb" "my_source_orb" {
  configuration = {
    api_key              = "...my_api_key..."
    lookback_window_days = 6
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
  definition_id = "f9cf17c9-c1c9-4188-a190-0dfc35041fcd"
  name          = "Shaun Schimmel"
  secret_id     = "...my_secret_id..."
  workspace_id  = "262ef24d-9236-49b1-bf5a-7ba288f10a06"
}