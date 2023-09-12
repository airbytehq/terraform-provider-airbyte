resource "airbyte_source_freshcaller" "my_source_freshcaller" {
  configuration = {
    api_key             = "...my_api_key..."
    domain              = "snaptravel"
    requests_per_minute = 2
    source_type         = "freshcaller"
    start_date          = "2022-01-01T12:00:00Z"
    sync_lag_minutes    = 9
  }
  name         = "Kenneth Friesen IV"
  secret_id    = "...my_secret_id..."
  workspace_id = "d6d364ff-d455-4906-9126-3d48e935c2c9"
}