resource "airbyte_source_coinmarketcap" "my_source_coinmarketcap" {
  configuration = {
    api_key   = "...my_api_key..."
    data_type = "latest"
    symbols = [
      "...",
    ]
  }
  definition_id = "06042c1c-6566-41b2-885a-060238eba136"
  name          = "Angelina Feeney Jr."
  secret_id     = "...my_secret_id..."
  workspace_id  = "cfe1ba68-d340-4502-b960-29febd39e6ab"
}