resource "airbyte_source_zendesk_sunshine" "my_source_zendesksunshine" {
  configuration = {
    credentials = {
      source_zendesk_sunshine_authorization_method_api_token = {
        api_token = "...my_api_token..."
        email     = "Adonis17@hotmail.com"
      }
    }
    start_date = "2021-01-01T00:00:00Z"
    subdomain  = "...my_subdomain..."
  }
  name         = "Miss Irene Brekke"
  secret_id    = "...my_secret_id..."
  workspace_id = "c8f204e6-a775-4647-ab6b-abc0f9b18b2e"
}