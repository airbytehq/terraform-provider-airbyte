resource "airbyte_source_freshcaller" "my_source_freshcaller" {
  configuration = {
    api_key             = "...my_api_key..."
    domain              = "snaptravel"
    requests_per_minute = 6
    start_date          = "2022-01-01T12:00:00Z"
    sync_lag_minutes    = 2
  }
  definition_id = "8fbb0cdd-cf80-42e3-a601-65466352da9b"
  name          = "Leslie Tillman"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c5d5cf50-fbf7-4134-a4ed-5bf6d67306cc"
}