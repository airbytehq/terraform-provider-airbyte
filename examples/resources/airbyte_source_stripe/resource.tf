resource "airbyte_source_stripe" "my_source_stripe" {
  configuration = {
    account_id           = "...my_account_id..."
    call_rate_limit      = 25
    client_secret        = "...my_client_secret..."
    lookback_window_days = 4
    num_workers          = 2
    slice_range          = 1
    start_date           = "2017-01-25T00:00:00Z"
  }
  definition_id = "7281f9a2-e8d0-4a1c-9c43-ac663b447792"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "94ac24f1-d3b4-46af-ace7-475d3264149a"
}