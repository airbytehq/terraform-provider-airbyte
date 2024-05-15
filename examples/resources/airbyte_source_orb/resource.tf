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
  definition_id = "1ad7b3d7-61e2-49ef-a6ae-07d2b59ab56e"
  name          = "Roderick Heathcote"
  secret_id     = "...my_secret_id..."
  workspace_id  = "000ccdee-d12b-4d5e-b73d-022a608737f9"
}