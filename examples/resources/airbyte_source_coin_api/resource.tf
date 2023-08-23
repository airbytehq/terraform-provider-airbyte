resource "airbyte_source_coin_api" "my_source_coinapi" {
  configuration = {
    api_key     = "...my_api_key..."
    end_date    = "2019-01-01T00:00:00"
    environment = "sandbox"
    limit       = 10
    period      = "5SEC"
    source_type = "coin-api"
    start_date  = "2019-01-01T00:00:00"
    symbol_id   = "...my_symbol_id..."
  }
  name         = "Myron Boyle"
  secret_id    = "...my_secret_id..."
  workspace_id = "c2b9c247-c883-473a-80e1-942f32e55055"
}