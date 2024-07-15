resource "airbyte_source_orb" "my_source_orb" {
  configuration = {
    api_key              = "...my_api_key..."
    end_date             = "2024-03-01T00:00:00Z"
    lookback_window_days = 2
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
  definition_id = "e09a2aae-62d9-4d77-8257-55e6995c5765"
  name          = "Miss Nadine Wunsch"
  secret_id     = "...my_secret_id..."
  workspace_id  = "422b3629-976b-4741-9bfa-fbdd349afd0c"
}