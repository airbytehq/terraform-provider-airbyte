resource "airbyte_source_confluence" "my_source_confluence" {
  configuration = {
    api_token   = "...my_api_token..."
    domain_name = "...my_domain_name..."
    email       = "abc@example.com"
  }
  definition_id = "f2d42750-6042-4c1c-a566-1b2485a06023"
  name          = "Percy Reilly I"
  secret_id     = "...my_secret_id..."
  workspace_id  = "61d3c00c-fe1b-4a68-9340-502b96029feb"
}