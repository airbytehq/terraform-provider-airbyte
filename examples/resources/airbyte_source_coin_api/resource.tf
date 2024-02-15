resource "airbyte_source_coin_api" "my_source_coinapi" {
  configuration = {
    api_key     = "...my_api_key..."
    end_date    = "2019-01-01T00:00:00"
    environment = "production"
    limit       = 1
    period      = "2MTH"
    start_date  = "2019-01-01T00:00:00"
    symbol_id   = "...my_symbol_id..."
  }
  definition_id = "70e18a81-72f9-4322-b1c9-f9cbaa542e6e"
  name          = "Priscilla Aufderhar"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1d84c3fb-c24f-4860-bce8-5198c116e726"
}