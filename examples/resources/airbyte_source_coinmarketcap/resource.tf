resource "airbyte_source_coinmarketcap" "my_source_coinmarketcap" {
  configuration = {
    api_key   = "...my_api_key..."
    data_type = "latest"
    symbols = [
      "...",
    ]
  }
  definition_id = "6d74638d-1409-4463-9cf5-dd4a0c05f536"
  name          = "Reginald Rath"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8b8f8f6a-fbf3-465d-a87e-087e3905b6a4"
}