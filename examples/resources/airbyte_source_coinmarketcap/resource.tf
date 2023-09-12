resource "airbyte_source_coinmarketcap" "my_source_coinmarketcap" {
  configuration = {
    api_key     = "...my_api_key..."
    data_type   = "historical"
    source_type = "coinmarketcap"
    symbols = [
      "...",
    ]
  }
  name         = "Meredith Kassulke"
  secret_id    = "...my_secret_id..."
  workspace_id = "1804e54c-82f1-468a-b63c-8873e484380b"
}