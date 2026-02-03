resource "airbyte_source_pandadoc" "my_source_pandadoc" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    start_date            = "2022-01-02T07:55:16.182Z"
  }
  definition_id = "1e4682b2-a699-4422-8b53-9384fa52fd8b"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "93b09f0b-adc8-4088-b6fa-6426850ac0e5"
}