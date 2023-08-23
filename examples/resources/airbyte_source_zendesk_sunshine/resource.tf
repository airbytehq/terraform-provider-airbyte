resource "airbyte_source_zendesk_sunshine" "my_source_zendesksunshine" {
  configuration = {
    credentials = {
      source_zendesk_sunshine_authorization_method_api_token = {
        api_token   = "...my_api_token..."
        auth_method = "api_token"
        email       = "Hollis.Mann72@hotmail.com"
      }
    }
    source_type = "zendesk-sunshine"
    start_date  = "2021-01-01T00:00:00Z"
    subdomain   = "...my_subdomain..."
  }
  name         = "Alexander Friesen"
  secret_id    = "...my_secret_id..."
  workspace_id = "82dbec75-c68c-4606-9946-8ce304d8849b"
}