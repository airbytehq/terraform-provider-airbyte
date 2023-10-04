resource "airbyte_source_coin_api" "my_source_coinapi" {
  configuration = {
    api_key     = "...my_api_key..."
    end_date    = "2019-01-01T00:00:00"
    environment = "production"
    limit       = 7
    period      = "5SEC"
    start_date  = "2019-01-01T00:00:00"
    symbol_id   = "...my_symbol_id..."
  }
  name         = "Rebecca Brekke"
  secret_id    = "...my_secret_id..."
  workspace_id = "e8db1144-f7f4-4dcb-a810-858467e5cd33"
}