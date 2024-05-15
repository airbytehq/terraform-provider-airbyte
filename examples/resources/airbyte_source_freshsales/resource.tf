resource "airbyte_source_freshsales" "my_source_freshsales" {
  configuration = {
    api_key     = "...my_api_key..."
    domain_name = "mydomain.myfreshworks.com"
  }
  definition_id = "b11448c1-cd3a-4fe5-af85-381e22d9fe1b"
  name          = "Roy Conroy"
  secret_id     = "...my_secret_id..."
  workspace_id  = "121e6315-be30-46a4-a839-94413a7c75d4"
}