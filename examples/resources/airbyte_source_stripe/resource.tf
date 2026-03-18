resource "airbyte_source_stripe" "my_source_stripe" {
  configuration = {
    account_id = "...my_account_id..."
    api_retention_streams = [
      "application_fees_refunds"
    ]
    call_rate_limit      = 25
    client_secret        = "...my_client_secret..."
    lookback_window_days = 0
    num_workers          = 2
    slice_range          = 1
    start_date           = "2017-01-25T00:00:00Z"
  }
  definition_id = "e094cb9a-26de-4645-8761-65c0c425d1de"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "94ac24f1-d3b4-46af-ace7-475d3264149a"
}