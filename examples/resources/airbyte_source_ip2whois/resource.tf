resource "airbyte_source_ip2whois" "my_source_ip2whois" {
  configuration = {
    api_key = "...my_api_key..."
    domain  = "www.facebook.com"
  }
  name         = "Mr. Helen Heidenreich MD"
  secret_id    = "...my_secret_id..."
  workspace_id = "8862473b-7573-4910-8618-e91445d83c49"
}