resource "airbyte_source_freshsales" "my_source_freshsales" {
  configuration = {
    api_key     = "...my_api_key..."
    domain_name = "mydomain.myfreshworks.com"
    source_type = "freshsales"
  }
  name         = "Salvador Walter DVM"
  workspace_id = "30be3e43-202d-4721-a576-506641870d9d"
}