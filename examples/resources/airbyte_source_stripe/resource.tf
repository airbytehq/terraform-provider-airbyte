resource "airbyte_source_stripe" "my_source_stripe" {
  configuration = {
    account_id           = "...my_account_id..."
    client_secret        = "...my_client_secret..."
    lookback_window_days = 3
    slice_range          = 180
    start_date           = "2017-01-25T00:00:00Z"
  }
  name         = "Kerry Smitham"
  secret_id    = "...my_secret_id..."
  workspace_id = "b93f80b7-f557-4094-a97b-6356d5339163"
}