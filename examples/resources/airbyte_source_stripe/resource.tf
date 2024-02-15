resource "airbyte_source_stripe" "my_source_stripe" {
  configuration = {
    account_id           = "...my_account_id..."
    call_rate_limit      = 100
    client_secret        = "...my_client_secret..."
    lookback_window_days = 8
    num_workers          = 2
    slice_range          = 3
    start_date           = "2017-01-25T00:00:00Z"
  }
  definition_id = "b5a3e446-fc1e-40fa-91f7-ef5f462d7c84"
  name          = "Willie Buckridge"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7a1b271a-5b00-49f2-9606-a36dac99592a"
}