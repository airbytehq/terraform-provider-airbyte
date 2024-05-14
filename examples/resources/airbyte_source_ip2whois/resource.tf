resource "airbyte_source_ip2whois" "my_source_ip2whois" {
  configuration = {
    api_key = "...my_api_key..."
    domain  = "www.google.com"
  }
  definition_id = "09c8206a-4b04-43ef-89e6-1b75b726765e"
  name          = "Malcolm Block"
  secret_id     = "...my_secret_id..."
  workspace_id  = "842954bd-759b-4dc8-b93f-80b7f557094a"
}