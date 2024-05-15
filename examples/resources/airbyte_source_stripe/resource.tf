resource "airbyte_source_stripe" "my_source_stripe" {
  configuration = {
    account_id           = "...my_account_id..."
    call_rate_limit      = 100
    client_secret        = "...my_client_secret..."
    lookback_window_days = 4
    num_workers          = 2
    slice_range          = 1
    start_date           = "2017-01-25T00:00:00Z"
  }
  definition_id = "337f10a6-4369-4e4e-a32c-cb4d52da6128"
  name          = "Carlos Gutmann"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a122e394-9c81-498a-abf6-f1cbdb35a96c"
}