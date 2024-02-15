resource "airbyte_source_coinmarketcap" "my_source_coinmarketcap" {
  configuration = {
    api_key   = "...my_api_key..."
    data_type = "latest"
    symbols = [
      "...",
    ]
  }
  definition_id = "81ee6770-fa8e-4c1b-a804-bd6457a40e88"
  name          = "Heather Murray"
  secret_id     = "...my_secret_id..."
  workspace_id  = "41ba6f5d-90d5-4a8a-b49e-2072bdff3818"
}