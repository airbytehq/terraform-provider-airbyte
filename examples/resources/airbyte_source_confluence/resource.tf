resource "airbyte_source_confluence" "my_source_confluence" {
  configuration = {
    api_token   = "...my_api_token..."
    domain_name = "example.atlassian.net"
    email       = "abc@example.com"
    source_type = "confluence"
  }
  name         = "Edward Roberts"
  secret_id    = "...my_secret_id..."
  workspace_id = "ce10873e-42b0-406d-a788-78ba8581a582"
}