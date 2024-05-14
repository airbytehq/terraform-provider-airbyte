resource "airbyte_source_coin_api" "my_source_coinapi" {
  configuration = {
    api_key     = "...my_api_key..."
    end_date    = "2019-01-01T00:00:00"
    environment = "production"
    limit       = 10
    period      = "5SEC"
    start_date  = "2019-01-01T00:00:00"
    symbol_id   = "...my_symbol_id..."
  }
  definition_id = "44d8a858-9d84-494d-8fae-a55003801e9f"
  name          = "Gail Jakubowski Jr."
  secret_id     = "...my_secret_id..."
  workspace_id  = "c8feba7b-45cf-4ea0-8abd-da328f6c373e"
}