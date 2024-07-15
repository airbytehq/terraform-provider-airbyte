resource "airbyte_source_coinmarketcap" "my_source_coinmarketcap" {
  configuration = {
    api_key   = "...my_api_key..."
    data_type = "latest"
    symbols = [
      "...",
    ]
  }
  definition_id = "d4275060-42c1-4c65-a61b-2485a060238e"
  name          = "Shaun Brakus"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1d3c00cf-e1ba-468d-b405-02b96029febd"
}