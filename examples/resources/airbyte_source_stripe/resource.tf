resource "airbyte_source_stripe" "my_source_stripe" {
  configuration = {
    account_id           = "...my_account_id..."
    call_rate_limit      = 25
    client_secret        = "...my_client_secret..."
    lookback_window_days = 8
    num_workers          = 3
    slice_range          = 3
    start_date           = "2017-01-25T00:00:00Z"
  }
  definition_id = "93c7a4b2-d7bb-4c29-8ef0-0ad5372256fe"
  name          = "Cynthia O'Reilly"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7cfe6f34-acc6-45c5-af5f-a6778e44b91c"
}