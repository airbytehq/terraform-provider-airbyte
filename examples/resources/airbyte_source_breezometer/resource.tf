resource "airbyte_source_breezometer" "my_source_breezometer" {
  configuration = {
    api_key           = "...my_api_key..."
    days_to_forecast  = 3
    historic_hours    = 30
    hours_to_forecast = 30
    latitude          = "54.675003"
    longitude         = "-113.550282"
    radius            = 50
  }
  definition_id = "1c519f7c-7ebb-4667-aa1f-d6ef608553ce"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "bbb987c2-7298-4301-92bb-f47b2617a049"
}