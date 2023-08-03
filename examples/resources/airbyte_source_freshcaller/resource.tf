resource "airbyte_source_freshcaller" "my_source_freshcaller" {
  configuration = {
    api_key             = "...my_api_key..."
    domain              = "snaptravel"
    requests_per_minute = 4
    source_type         = "freshcaller"
    start_date          = "2022-01-01T12:00:00Z"
    sync_lag_minutes    = 4
  }
  name         = "Mr. Roy Stehr I"
  workspace_id = "55338cec-086f-4a21-a915-2cb3119167b8"
}