resource "airbyte_source_coinmarketcap" "my_source_coinmarketcap" {
  configuration = {
    api_key   = "...my_api_key..."
    data_type = "latest"
    symbols = [
      "...",
    ]
  }
  definition_id = "6663420a-6a3a-4b4d-8475-5b910e5c999e"
  name          = "Rene Ruecker"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0e8f2a37-cc1f-4bec-883d-a2fecd2cab29"
}