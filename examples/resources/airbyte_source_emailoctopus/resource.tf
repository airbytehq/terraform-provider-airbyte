resource "airbyte_source_emailoctopus" "my_source_emailoctopus" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "81b36cf1-afcf-494e-bc79-cbeca1c7573a"
  name          = "Candice Rath"
  secret_id     = "...my_secret_id..."
  workspace_id  = "82d4c0a2-cef7-4812-875b-ca9a4804a9e0"
}