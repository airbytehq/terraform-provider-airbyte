resource "airbyte_source_freshcaller" "my_source_freshcaller" {
  configuration = {
    api_key             = "...my_api_key..."
    domain              = "snaptravel"
    requests_per_minute = 5
    start_date          = "2022-01-01T12:00:00Z"
    sync_lag_minutes    = 3
  }
  definition_id = "c70b5882-c881-4a08-b8bf-df7e2fa4a636"
  name          = "Kim Tremblay"
  secret_id     = "...my_secret_id..."
  workspace_id  = "bba48ed6-d0ea-4f7f-94c7-c369f9cb0a3d"
}