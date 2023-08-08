resource "airbyte_source_coin_api" "my_source_coinapi" {
  configuration = {
    api_key     = "...my_api_key..."
    end_date    = "2019-01-01T00:00:00"
    environment = "sandbox"
    limit       = 6
    period      = "5SEC"
    source_type = "coin-api"
    start_date  = "2019-01-01T00:00:00"
    symbol_id   = "...my_symbol_id..."
  }
  name         = "Marcella Ernser"
  secret_id    = "...my_secret_id..."
  workspace_id = "ecfcc8f8-9501-40f5-9d3d-6fa1804e54c8"
}