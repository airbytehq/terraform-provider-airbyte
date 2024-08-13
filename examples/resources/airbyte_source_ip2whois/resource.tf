resource "airbyte_source_ip2whois" "my_source_ip2whois" {
  configuration = {
    api_key = "...my_api_key..."
    domain  = "www.facebook.com"
  }
  definition_id = "85711ab9-4fe7-45a5-93e0-0977793827c0"
  name          = "Mable Stroman"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b4fbde6a-e539-4551-88cd-8df8fddacae8"
}