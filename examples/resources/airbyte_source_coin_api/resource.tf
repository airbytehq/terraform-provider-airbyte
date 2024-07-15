resource "airbyte_source_coin_api" "my_source_coinapi" {
  configuration = {
    api_key     = "...my_api_key..."
    end_date    = "2019-01-01T00:00:00"
    environment = "sandbox"
    limit       = 8
    period      = "5SEC"
    start_date  = "2019-01-01T00:00:00"
    symbol_id   = "...my_symbol_id..."
  }
  definition_id = "cc123e87-83d5-40d4-92b8-0c50dc344f66"
  name          = "Dr. Randolph Wilderman"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a05e994a-ce41-4dc5-b42f-2a228e88647f"
}