resource "airbyte_source_coin_api" "my_source_coinapi" {
  configuration = {
    api_key     = "...my_api_key..."
    end_date    = "2019-01-01T00:00:00"
    environment = "sandbox"
    limit       = 39021
    period      = "5SEC"
    start_date  = "2019-01-01T00:00:00"
    symbol_id   = "...my_symbol_id..."
  }
  definition_id = "bddfa872-3b12-4feb-a665-3aa5aa88bcb2"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "0929de6e-00e3-4d8c-81a1-849a2ab68cdb"
}