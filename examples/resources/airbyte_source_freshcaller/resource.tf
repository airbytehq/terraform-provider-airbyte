resource "airbyte_source_freshcaller" "my_source_freshcaller" {
  configuration = {
    api_key             = "...my_api_key..."
    domain              = "snaptravel"
    requests_per_minute = 7
    start_date          = "2022-01-01T12:00:00Z"
    sync_lag_minutes    = 2
  }
  definition_id = "c06fe5a2-e94e-4ff2-91ad-fc721dd1f802"
  name          = "Margarita Nitzsche"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9660c93e-b114-448c-9cd3-afe5ef85381e"
}