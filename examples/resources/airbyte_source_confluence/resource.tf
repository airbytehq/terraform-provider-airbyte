resource "airbyte_source_confluence" "my_source_confluence" {
  configuration = {
    api_token   = "...my_api_token..."
    domain_name = "...my_domain_name..."
    email       = "abc@example.com"
    source_type = "confluence"
  }
  name         = "Jody Will"
  secret_id    = "...my_secret_id..."
  workspace_id = "ccca99bc-7fc0-4b2d-8e10-873e42b006d6"
}