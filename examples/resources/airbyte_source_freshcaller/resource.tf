resource "airbyte_source_freshcaller" "my_source_freshcaller" {
  configuration = {
    api_key             = "...my_api_key..."
    domain              = "snaptravel"
    requests_per_minute = 7
    start_date          = "2022-01-01T12:00:00Z"
    sync_lag_minutes    = 10
  }
  name         = "Carmen Strosin"
  secret_id    = "...my_secret_id..."
  workspace_id = "a73356f3-9bea-45e2-889f-0e8905c8543b"
}