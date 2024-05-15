resource "airbyte_source_confluence" "my_source_confluence" {
  configuration = {
    api_token   = "...my_api_token..."
    domain_name = "...my_domain_name..."
    email       = "abc@example.com"
  }
  definition_id = "cb6e6ff3-32bd-4f14-9775-fcbb81a7466b"
  name          = "Lonnie Langworth"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b7dede54-7fc7-4c1c-b53c-351689ddb3b3"
}