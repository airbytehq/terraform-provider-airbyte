resource "airbyte_source_freshsales" "my_source_freshsales" {
  configuration = {
    api_key     = "...my_api_key..."
    domain_name = "mydomain.myfreshworks.com"
  }
  definition_id = "777324c6-ca7f-4cda-8638-7854b69c42e8"
  name          = "Wade Nikolaus"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4c06fe5a-2e94-4eff-a11a-dfc721dd1f80"
}