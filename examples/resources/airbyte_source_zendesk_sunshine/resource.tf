resource "airbyte_source_zendesk_sunshine" "my_source_zendesksunshine" {
  configuration = {
    credentials = {
      source_zendesk_sunshine_authorization_method_api_token = {
        api_token   = "...my_api_token..."
        auth_method = "api_token"
        email       = "Hoyt61@yahoo.com"
      }
    }
    source_type = "zendesk-sunshine"
    start_date  = "2021-01-01T00:00:00Z"
    subdomain   = "...my_subdomain..."
  }
  name         = "Bridget Pagac"
  secret_id    = "...my_secret_id..."
  workspace_id = "07f06b28-ecc8-4649-a386-f62c969c4cc6"
}