resource "airbyte_source_coin_api" "my_source_coinapi" {
  configuration = {
    api_key     = "...my_api_key..."
    end_date    = "2019-01-01T00:00:00"
    environment = "sandbox"
    limit       = 10
    period      = "2MTH"
    start_date  = "2019-01-01T00:00:00"
    symbol_id   = "...my_symbol_id..."
  }
  definition_id = "851a3541-ba6f-45d9-8d5a-8a349e2072bd"
  name          = "Jan DuBuque IV"
  secret_id     = "...my_secret_id..."
  workspace_id  = "dbe50fcb-32a7-4817-babb-82e6a7189e92"
}