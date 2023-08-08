resource "airbyte_source_stripe" "my_source_stripe" {
  configuration = {
    account_id           = "...my_account_id..."
    client_secret        = "...my_client_secret..."
    lookback_window_days = 5
    slice_range          = 30
    source_type          = "stripe"
    start_date           = "2017-01-25T00:00:00Z"
  }
  name         = "Marlon Herzog"
  secret_id    = "...my_secret_id..."
  workspace_id = "f88f8f1b-f0bc-48e1-b206-d5d831d00810"
}