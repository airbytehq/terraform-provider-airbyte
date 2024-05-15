resource "airbyte_source_paystack" "my_source_paystack" {
  configuration = {
    lookback_window_days = 3
    secret_key           = "...my_secret_key..."
    start_date           = "2017-01-25T00:00:00Z"
  }
  definition_id = "3048e9c1-af99-461b-9c88-3a572712d8f3"
  name          = "Brett Goodwin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "cb82b32a-d03f-4d9a-9d8b-a9b0df86503c"
}