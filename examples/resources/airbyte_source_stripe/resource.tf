resource "airbyte_source_stripe" "my_source_stripe" {
  configuration = {
    account_id           = "...my_account_id..."
    call_rate_limit      = 100
    client_secret        = "...my_client_secret..."
    lookback_window_days = 10
    num_workers          = 1
    slice_range          = 10
    start_date           = "2017-01-25T00:00:00Z"
  }
  definition_id = "9512957c-2986-4967-96fe-05881022b8ad"
  name          = "Joann Schuster IV"
  secret_id     = "...my_secret_id..."
  workspace_id  = "88754523-f36d-4ab5-9228-90f3e992c2a3"
}