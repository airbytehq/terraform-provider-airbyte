resource "airbyte_source_coin_api" "my_source_coinapi" {
  configuration = {
    api_key     = "...my_api_key..."
    end_date    = "2019-01-01T00:00:00"
    environment = "production"
    limit       = 4
    period      = "5SEC"
    source_type = "coin-api"
    start_date  = "2019-01-01T00:00:00"
    symbol_id   = "...my_symbol_id..."
  }
  name         = "Dominic Pagac"
  workspace_id = "8941aebc-0b80-4a69-a4d3-b2ecfcc8f895"
}