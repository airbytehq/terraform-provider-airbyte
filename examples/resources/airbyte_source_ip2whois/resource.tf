resource "airbyte_source_ip2whois" "my_source_ip2whois" {
  configuration = {
    api_key     = "...my_api_key..."
    domain      = "www.google.com"
    source_type = "ip2whois"
  }
  name         = "Sylvester Kling"
  workspace_id = "7a0ef2f5-3602-48ef-aef9-34152ed7e253"
}