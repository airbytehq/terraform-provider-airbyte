resource "airbyte_source_coinmarketcap" "my_source_coinmarketcap" {
  configuration = {
    api_key   = "...my_api_key..."
    data_type = "historical"
    symbols = [
      "...",
    ]
  }
  definition_id = "89977eae-086e-43c2-9330-82ab840e5611"
  name          = "Marianne Bradtke"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a0210a5c-fbec-4287-a54f-12bc84028fbb"
}