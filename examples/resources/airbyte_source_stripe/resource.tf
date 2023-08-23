resource "airbyte_source_stripe" "my_source_stripe" {
  configuration = {
    account_id           = "...my_account_id..."
    client_secret        = "...my_client_secret..."
    lookback_window_days = 3
    slice_range          = 10
    source_type          = "stripe"
    start_date           = "2017-01-25T00:00:00Z"
  }
  name         = "Bernice Schultz I"
  secret_id    = "...my_secret_id..."
  workspace_id = "e13a4823-1090-47bd-b54c-092bd734f024"
}