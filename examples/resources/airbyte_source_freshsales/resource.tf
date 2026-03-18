resource "airbyte_source_freshsales" "my_source_freshsales" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    domain_name           = "mydomain.myfreshworks.com"
  }
  definition_id = "eca08d79-7b92-4065-b7f3-79c14836ebe7"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "2a428ffe-b32d-47b4-8a00-7e7ef3c8329d"
}