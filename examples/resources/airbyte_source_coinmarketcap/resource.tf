resource "airbyte_source_coinmarketcap" "my_source_coinmarketcap" {
  configuration = {
    api_key   = "...my_api_key..."
    data_type = "latest"
    symbols = [
      "...",
    ]
  }
  name         = "Olga Hauck"
  secret_id    = "...my_secret_id..."
  workspace_id = "cc3fde33-4f78-46aa-a3aa-f527fe19eb1b"
}