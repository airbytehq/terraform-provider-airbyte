resource "airbyte_source_ip2whois" "my_source_ip2whois" {
  configuration = {
    api_key = "...my_api_key..."
    domain  = "www.google.com"
  }
  definition_id = "711f25a2-8dde-404a-9ce3-be57bfa46127"
  name          = "Monica Champlin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "5ed08074-e17a-4648-8571-1ab94fe75a51"
}