resource "airbyte_source_freshcaller" "my_source_freshcaller" {
  configuration = {
    api_key             = "...my_api_key..."
    domain              = "snaptravel"
    requests_per_minute = 7
    source_type         = "freshcaller"
    start_date          = "2022-01-01T12:00:00Z"
    sync_lag_minutes    = 9
  }
  name         = "Keith Hills"
  secret_id    = "...my_secretId..."
  workspace_id = "b3119167-b8e3-4c8d-b034-08d6d364ffd4"
}