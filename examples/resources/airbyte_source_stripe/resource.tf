resource "airbyte_source_stripe" "my_source_stripe" {
  configuration = {
    account_id           = "...my_account_id..."
    call_rate_limit      = 25
    client_secret        = "...my_client_secret..."
    lookback_window_days = 9
    num_workers          = 1
    slice_range          = 10
    start_date           = "2017-01-25T00:00:00Z"
  }
  definition_id = "6fe50a2e-7cfe-46f3-8acc-65c56f5fa677"
  name          = "Sheldon Gerlach"
  secret_id     = "...my_secret_id..."
  workspace_id  = "91c615d1-2804-40ba-83eb-3c0afcc3c8fa"
}