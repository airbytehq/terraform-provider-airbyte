resource "airbyte_destination_elasticsearch" "my_destination_elasticsearch" {
  configuration = {
    authentication_method = {
      api_key_secret = {
        api_key_id     = "...my_api_key_id..."
        api_key_secret = "...my_api_key_secret..."
      }
    }
    ca_certificate = "...my_ca_certificate..."
    endpoint       = "...my_endpoint..."
    upsert         = false
  }
  definition_id = "da65ed46-5e75-48af-92ad-38ed7ed0e5e2"
  name          = "Katherine Considine"
  workspace_id  = "7d0e4e50-95ed-494b-8ecb-397d064562ef"
}