resource "airbyte_source_freshsales" "my_source_freshsales" {
  configuration = {
    api_key     = "...my_api_key..."
    domain_name = "mydomain.myfreshworks.com"
    source_type = "freshsales"
  }
  name         = "Geraldine Kling"
  secret_id    = "...my_secretId..."
  workspace_id = "06641870-d9d2-41f9-ad03-0c4ecc11a083"
}