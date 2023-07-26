resource "airbyte_source_stripe" "my_source_stripe" {
  configuration = {
    account_id           = "...my_account_id..."
    client_secret        = "...my_client_secret..."
    lookback_window_days = 1
    slice_range          = 3
    source_type          = "stripe"
    start_date           = "2017-01-25T00:00:00Z"
  }
  name         = "Wm Little"
  workspace_id = "32d892cf-7812-4cb5-92c8-78240bf548f8"
}