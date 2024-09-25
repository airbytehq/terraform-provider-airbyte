resource "airbyte_source_freshcaller" "my_source_freshcaller" {
  configuration = {
    api_key             = "...my_api_key..."
    domain              = "snaptravel"
    requests_per_minute = 6
    start_date          = "2022-01-01T12:00:00Z"
    sync_lag_minutes    = 2
  }
  definition_id = "3c0f294c-11e4-4e99-bd29-474281bb54df"
  name          = "Sam Sawayn"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b79e2328-88b6-4bde-a515-4a52da80f2bf"
}