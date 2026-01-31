resource "airbyte_source_freshsales" "my_source_freshsales" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    domain_name           = "mydomain.myfreshworks.com"
  }
  definition_id = "7e6b9794-aab6-4906-9afe-0f7150bf456c"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "2a428ffe-b32d-47b4-8a00-7e7ef3c8329d"
}