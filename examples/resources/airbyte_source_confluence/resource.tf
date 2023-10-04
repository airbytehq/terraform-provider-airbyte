resource "airbyte_source_confluence" "my_source_confluence" {
  configuration = {
    api_token   = "...my_api_token..."
    domain_name = "...my_domain_name..."
    email       = "abc@example.com"
  }
  name         = "Terry Beer"
  secret_id    = "...my_secret_id..."
  workspace_id = "f1e30360-fc0e-4aa5-8681-bc3adb090c01"
}