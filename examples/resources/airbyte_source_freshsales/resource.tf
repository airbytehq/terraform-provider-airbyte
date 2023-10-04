resource "airbyte_source_freshsales" "my_source_freshsales" {
  configuration = {
    api_key     = "...my_api_key..."
    domain_name = "mydomain.myfreshworks.com"
  }
  name         = "Dr. Rex Monahan"
  secret_id    = "...my_secret_id..."
  workspace_id = "7f8f441b-58df-4c55-9a0b-ee1c5ff22338"
}