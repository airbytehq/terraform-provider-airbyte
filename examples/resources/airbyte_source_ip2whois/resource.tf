resource "airbyte_source_ip2whois" "my_source_ip2whois" {
  configuration = {
    api_key = "...my_api_key..."
    domain  = "www.google.com"
  }
  definition_id = "91630fd2-f131-4d4f-bef2-53f33ac135dc"
  name          = "Kevin Weissnat"
  secret_id     = "...my_secret_id..."
  workspace_id  = "794a97d5-acf5-4625-ba66-e5ad39192931"
}