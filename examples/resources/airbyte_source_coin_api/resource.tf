resource "airbyte_source_coin_api" "my_source_coinapi" {
  configuration = {
    api_key     = "...my_api_key..."
    end_date    = "2019-01-01T00:00:00"
    environment = "production"
    limit       = 2
    period      = "2MTH"
    start_date  = "2019-01-01T00:00:00"
    symbol_id   = "...my_symbol_id..."
  }
  definition_id = "b4d44755-b910-4e5c-999e-89cbd0e8f2a3"
  name          = "Dr. Alexandra Runolfsson"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ec883da2-fecd-42ca-b29e-0bc6002c3cc1"
}