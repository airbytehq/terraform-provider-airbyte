resource "airbyte_source_coin_api" "my_source_coinapi" {
  configuration = {
    api_key     = "...my_api_key..."
    end_date    = "2019-01-01T00:00:00"
    environment = "sandbox"
    limit       = 10
    period      = "5SEC"
    start_date  = "2019-01-01T00:00:00"
    symbol_id   = "...my_symbol_id..."
  }
  definition_id = "49e5b0b6-8d5f-4b4b-99e2-f7dc2833c76b"
  name          = "Sammy Hauck"
  secret_id     = "...my_secret_id..."
  workspace_id  = "566b4ade-0498-4ec4-8fd8-ad9161a05c5e"
}