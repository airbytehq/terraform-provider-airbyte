resource "airbyte_source_coin_api" "my_source_coinapi" {
  configuration = {
    api_key     = "...my_api_key..."
    end_date    = "2019-01-01T00:00:00"
    environment = "sandbox"
    limit       = 10
    period      = "2MTH"
    source_type = "coin-api"
    start_date  = "2019-01-01T00:00:00"
    symbol_id   = "...my_symbol_id..."
  }
  name         = "Francis Boyle"
  secret_id    = "...my_secret_id..."
  workspace_id = "bc0b80a6-924d-43b2-acfc-c8f895010f5d"
}