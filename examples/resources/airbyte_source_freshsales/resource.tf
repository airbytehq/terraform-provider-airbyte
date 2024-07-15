resource "airbyte_source_freshsales" "my_source_freshsales" {
  configuration = {
    api_key     = "...my_api_key..."
    domain_name = "mydomain.myfreshworks.com"
  }
  definition_id = "7ae08fd2-caf8-43f0-8591-0a7c570570b8"
  name          = "Wendell Cartwright"
  secret_id     = "...my_secret_id..."
  workspace_id  = "da4e6d7c-2fca-4a38-ada1-d2ddf0351c49"
}