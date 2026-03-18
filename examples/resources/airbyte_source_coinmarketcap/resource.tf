resource "airbyte_source_coinmarketcap" "my_source_coinmarketcap" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    data_type             = "latest"
    symbols = [
      "..."
    ]
  }
  definition_id = "239463f5-64bb-4d88-b4bd-18ce673fd572"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "739407d7-e191-4413-8d2a-cb6fba4d94ca"
}