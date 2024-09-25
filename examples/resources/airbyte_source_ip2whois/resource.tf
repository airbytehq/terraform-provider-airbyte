resource "airbyte_source_ip2whois" "my_source_ip2whois" {
  configuration = {
    api_key = "...my_api_key..."
    domain  = "www.google.com"
  }
  definition_id = "d0d26d91-47bb-4356-aca6-47ba4f7aaba2"
  name          = "Joy Lowe I"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1a21c893-8ad6-4fcb-b78b-ed98212c704a"
}