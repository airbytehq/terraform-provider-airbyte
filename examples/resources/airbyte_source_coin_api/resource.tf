resource "airbyte_source_coin_api" "my_source_coinapi" {
  configuration = {
    api_key     = "...my_api_key..."
    end_date    = "2019-01-01T00:00:00"
    environment = "sandbox"
    limit       = 2
    period      = "2MTH"
    start_date  = "2019-01-01T00:00:00"
    symbol_id   = "...my_symbol_id..."
  }
  definition_id = "8783d50d-4d2b-480c-90dc-344f66cbf0e9"
  name          = "Larry Hayes"
  secret_id     = "...my_secret_id..."
  workspace_id  = "94ace41d-c5b4-42f2-a228-e88647f2d427"
}