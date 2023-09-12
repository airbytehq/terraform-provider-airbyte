resource "airbyte_source_ip2whois" "my_source_ip2whois" {
  configuration = {
    api_key     = "...my_api_key..."
    domain      = "www.facebook.com"
    source_type = "ip2whois"
  }
  name         = "Leland Wisoky"
  secret_id    = "...my_secret_id..."
  workspace_id = "7aaf9bba-d185-4fe4-b1d6-bf5c838fbb8c"
}