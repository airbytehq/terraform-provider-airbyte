resource "airbyte_source_stripe" "my_source_stripe" {
  configuration = {
    account_id           = "...my_account_id..."
    call_rate_limit      = 100
    client_secret        = "...my_client_secret..."
    lookback_window_days = 10
    num_workers          = 3
    slice_range          = 360
    start_date           = "2017-01-25T00:00:00Z"
  }
  definition_id = "46c36bb7-337b-4f0b-aca9-3a8ae78e1e53"
  name          = "Marcella Muller"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b6d5dc1e-250f-480f-bc59-5c3777bccfe7"
}