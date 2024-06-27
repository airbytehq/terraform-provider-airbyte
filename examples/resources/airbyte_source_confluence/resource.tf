resource "airbyte_source_confluence" "my_source_confluence" {
  configuration = {
    api_token   = "...my_api_token..."
    domain_name = "...my_domain_name..."
    email       = "abc@example.com"
  }
  definition_id = "740139dc-2cf2-4cb4-9644-2d85f5b6382e"
  name          = "Ms. Laura Upton"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8172f932-271c-49f9-8baa-542e6e080961"
}