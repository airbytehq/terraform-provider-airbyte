resource "airbyte_source_stripe" "my_source_stripe" {
  configuration = {
    account_id           = "...my_account_id..."
    client_secret        = "...my_client_secret..."
    lookback_window_days = 5
    slice_range          = 10
    source_type          = "stripe"
    start_date           = "2017-01-25T00:00:00Z"
  }
  name         = "Seth Nitzsche"
  secret_id    = "...my_secret_id..."
  workspace_id = "63e3af3d-d9dd-4a33-9cd6-3483e4a7a98e"
}