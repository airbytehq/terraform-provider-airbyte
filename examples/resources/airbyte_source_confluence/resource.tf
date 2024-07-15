resource "airbyte_source_confluence" "my_source_confluence" {
  configuration = {
    api_token   = "...my_api_token..."
    domain_name = "...my_domain_name..."
    email       = "abc@example.com"
  }
  definition_id = "3b3d7401-39dc-42cf-acb4-16442d85f5b6"
  name          = "Olga Collins"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0e18a817-2f93-4227-9c9f-9cbaa542e6e0"
}