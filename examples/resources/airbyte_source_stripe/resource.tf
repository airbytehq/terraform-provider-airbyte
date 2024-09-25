resource "airbyte_source_stripe" "my_source_stripe" {
  configuration = {
    account_id           = "...my_account_id..."
    call_rate_limit      = 100
    client_secret        = "...my_client_secret..."
    lookback_window_days = 2
    num_workers          = 2
    slice_range          = 30
    start_date           = "2017-01-25T00:00:00Z"
  }
  definition_id = "08449978-c5f0-4c0b-b0c5-d08d732ef691"
  name          = "Grady Block"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6e65b76b-dc3f-49ea-a358-d5b4415ac58f"
}