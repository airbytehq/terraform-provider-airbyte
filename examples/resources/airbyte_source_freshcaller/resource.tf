resource "airbyte_source_freshcaller" "my_source_freshcaller" {
  configuration = {
    api_key             = "...my_api_key..."
    domain              = "snaptravel"
    requests_per_minute = 8
    start_date          = "2022-01-01T12:00:00Z"
    sync_lag_minutes    = 7
  }
  definition_id = "4fda52f6-9543-4b86-a0d9-bb50480aaaf7"
  name          = "Ms. Inez Veum"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d2caf83f-0459-410a-bc57-0570b889169d"
}