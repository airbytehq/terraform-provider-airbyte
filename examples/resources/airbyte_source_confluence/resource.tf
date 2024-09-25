resource "airbyte_source_confluence" "my_source_confluence" {
  configuration = {
    api_token   = "...my_api_token..."
    domain_name = "...my_domain_name..."
    email       = "abc@example.com"
  }
  definition_id = "df143ee1-0f82-479e-827b-2c340e1d4b42"
  name          = "Miss Rickey Bradtke"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2aeeab6a-16bc-40f1-be55-67777324c6ca"
}