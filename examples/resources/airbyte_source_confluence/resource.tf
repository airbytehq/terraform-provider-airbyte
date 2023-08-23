resource "airbyte_source_confluence" "my_source_confluence" {
  configuration = {
    api_token   = "...my_api_token..."
    domain_name = "...my_domain_name..."
    email       = "abc@example.com"
    source_type = "confluence"
  }
  name         = "Ms. Russell Wunsch"
  secret_id    = "...my_secret_id..."
  workspace_id = "a363c887-3e48-4438-8b1f-6b8ca275a60a"
}