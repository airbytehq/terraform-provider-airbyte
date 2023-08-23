resource "airbyte_source_coinmarketcap" "my_source_coinmarketcap" {
  configuration = {
    api_key     = "...my_api_key..."
    data_type   = "latest"
    source_type = "coinmarketcap"
    symbols = [
      "...",
    ]
  }
  name         = "Elsie West"
  secret_id    = "...my_secret_id..."
  workspace_id = "56d0bd0a-f2df-4e13-9b4f-62cba3f8941a"
}