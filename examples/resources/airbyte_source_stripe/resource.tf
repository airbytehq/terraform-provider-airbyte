resource "airbyte_source_stripe" "my_source_stripe" {
  configuration = {
    account_id           = "...my_account_id..."
    call_rate_limit      = 100
    client_secret        = "...my_client_secret..."
    lookback_window_days = 4
    num_workers          = 3
    slice_range          = 1
    start_date           = "2017-01-25T00:00:00Z"
  }
  definition_id = "f1e4b304-69b6-4ca0-b303-cf017cd97836"
  name          = "Shawna Brekke"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7e9b4aab-fc5f-4f71-86c3-6bb7337bf0be"
}