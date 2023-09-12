resource "airbyte_source_freshsales" "my_source_freshsales" {
  configuration = {
    api_key     = "...my_api_key..."
    domain_name = "mydomain.myfreshworks.com"
    source_type = "freshsales"
  }
  name         = "Gustavo Adams DDS"
  secret_id    = "...my_secret_id..."
  workspace_id = "4ecc11a0-8364-4290-a8b8-502a55e7f73b"
}