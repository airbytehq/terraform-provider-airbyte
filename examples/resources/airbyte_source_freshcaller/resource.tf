resource "airbyte_source_freshcaller" "my_source_freshcaller" {
  configuration = {
    api_key             = "...my_api_key..."
    domain              = "snaptravel"
    requests_per_minute = 10
    start_date          = "2022-01-01T12:00:00Z"
    sync_lag_minutes    = 0
  }
  definition_id = "df143ee1-0f82-479e-827b-2c340e1d4b42"
  name          = "Miss Rickey Bradtke"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2aeeab6a-16bc-40f1-be55-67777324c6ca"
}