resource "airbyte_source_coinmarketcap" "my_source_coinmarketcap" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    data_type             = "latest"
    symbols = [
      "..."
    ]
  }
  definition_id = "0b4d1772-2639-41fb-9b6a-f2c6652fef02"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "739407d7-e191-4413-8d2a-cb6fba4d94ca"
}