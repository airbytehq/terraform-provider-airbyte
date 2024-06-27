resource "airbyte_source_freshcaller" "my_source_freshcaller" {
  configuration = {
    api_key             = "...my_api_key..."
    domain              = "snaptravel"
    requests_per_minute = 0
    start_date          = "2022-01-01T12:00:00Z"
    sync_lag_minutes    = 2
  }
  definition_id = "eb11448c-1cd3-4afe-9ef8-5381e22d9fe1"
  name          = "Kristopher Champlin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4121e631-5be3-406a-8e83-994413a7c75d"
}