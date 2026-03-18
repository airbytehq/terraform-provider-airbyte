resource "airbyte_source_orb" "my_source_orb" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    end_date              = "2024-03-01T00:00:00Z"
    lookback_window_days  = 0
    numeric_event_properties_keys = [
      "..."
    ]
    plan_id    = "...my_plan_id..."
    start_date = "2022-03-01T00:00:00Z"
    string_event_properties_keys = [
      "..."
    ]
    subscription_usage_grouping_key = "...my_subscription_usage_grouping_key..."
  }
  definition_id = "7f0455fb-4518-4ec0-b7a3-d808bf8081cc"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "cd62c0b7-5370-44f8-929a-03ac1f7fe259"
}