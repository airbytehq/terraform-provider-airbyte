resource "airbyte_source_calendly" "my_source_calendly" {
  configuration = {
    api_key       = "...my_api_key..."
    lookback_days = 2.91
    start_date    = "2021-01-29T13:25:58.736Z"
  }
  definition_id = "8be0c388-cbc0-4fe1-b922-5904f219f8ad"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "c6953f07-0b86-4105-8f27-e4fb9d5b9fc8"
}