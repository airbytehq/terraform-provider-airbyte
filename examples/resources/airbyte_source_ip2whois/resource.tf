resource "airbyte_source_ip2whois" "my_source_ip2whois" {
  configuration = {
    api_key = "...my_api_key..."
    domain  = "www.facebook.com"
  }
  definition_id = "9882d54c-e598-4cc5-9eb9-52f06231c57f"
  name          = "Ross Zboncak"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1baac6e0-5b1e-450c-9446-8d231cdd98f8"
}