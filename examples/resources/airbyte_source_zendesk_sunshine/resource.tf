resource "airbyte_source_zendesk_sunshine" "my_source_zendesksunshine" {
  configuration = {
    credentials = {
      source_zendesk_sunshine_authorization_method_api_token = {
        api_token   = "...my_api_token..."
        auth_method = "api_token"
        email       = "Leonor_Funk@hotmail.com"
      }
    }
    source_type = "zendesk-sunshine"
    start_date  = "2021-01-01T00:00:00Z"
    subdomain   = "...my_subdomain..."
  }
  name         = "Mrs. Edith Hermiston"
  secret_id    = "...my_secret_id..."
  workspace_id = "726d1532-1b83-42a5-ad69-180ff60eb9a6"
}