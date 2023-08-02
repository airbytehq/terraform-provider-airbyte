resource "airbyte_source_coinmarketcap" "my_source_coinmarketcap" {
  configuration = {
    api_key     = "...my_api_key..."
    data_type   = "latest"
    source_type = "coinmarketcap"
    symbols = [
      "...",
    ]
  }
  name         = "Walter Jacobs"
  secret_id    = "...my_secretId..."
  workspace_id = "363c8873-e484-4380-b1f6-b8ca275a60a0"
}