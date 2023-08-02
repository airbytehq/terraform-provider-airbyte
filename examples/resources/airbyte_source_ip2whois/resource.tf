resource "airbyte_source_ip2whois" "my_source_ip2whois" {
  configuration = {
    api_key     = "...my_api_key..."
    domain      = "www.facebook.com"
    source_type = "ip2whois"
  }
  name         = "Mrs. Travis Gutmann"
  secret_id    = "...my_secretId..."
  workspace_id = "ed7e253f-4c15-47de-aa71-70f445accf66"
}