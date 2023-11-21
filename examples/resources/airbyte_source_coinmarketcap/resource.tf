resource "airbyte_source_coinmarketcap" "my_source_coinmarketcap" {
  configuration = {
    api_key   = "...my_api_key..."
    data_type = "historical"
    symbols = [
      "...",
    ]
  }
  definition_id = "a1361d3c-00cf-4e1b-a68d-340502b96029"
  name          = "Pat Robel"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9e6abf17-c2d5-40cb-ae6f-f332bdf14577"
}