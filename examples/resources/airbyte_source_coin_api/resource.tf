resource "airbyte_source_coin_api" "my_source_coinapi" {
  configuration = {
    api_key     = "...my_api_key..."
    end_date    = "2019-01-01T00:00:00"
    environment = "sandbox"
    limit       = 8
    period      = "2MTH"
    start_date  = "2019-01-01T00:00:00"
    symbol_id   = "...my_symbol_id..."
  }
  definition_id = "f0e9a05e-994a-4ce4-9dc5-b42f2a228e88"
  name          = "Rhonda Kunze"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d4275060-42c1-4c65-a61b-2485a060238e"
}