resource "airbyte_source_freshcaller" "my_source_freshcaller" {
  configuration = {
    api_key             = "...my_api_key..."
    domain              = "snaptravel"
    requests_per_minute = 0
    start_date          = "2022-01-01T12:00:00Z"
    sync_lag_minutes    = 9
  }
  definition_id = "2de4b8db-33d2-4b3a-a7b0-b342a10fbc47"
  name          = "Ms. Grant Krajcik I"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9037c7ee-f972-4df3-814a-349fde89ab27"
}