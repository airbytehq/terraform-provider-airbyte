resource "airbyte_source_ip2whois" "my_source_ip2whois" {
  configuration = {
    api_key     = "...my_api_key..."
    domain      = "www.google.com"
    source_type = "ip2whois"
  }
  name         = "Lucia Gorczany II"
  secret_id    = "...my_secret_id..."
  workspace_id = "7deaa717-0f44-45ac-8f66-7aaf9bbad185"
}