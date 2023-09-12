resource "airbyte_source_zendesk_talk" "my_source_zendesktalk" {
  configuration = {
    credentials = {
      source_zendesk_talk_authentication_api_token = {
        api_token = "...my_api_token..."
        auth_type = "api_token"
        email     = "Kacie27@hotmail.com"
      }
    }
    source_type = "zendesk-talk"
    start_date  = "2020-10-15T00:00:00Z"
    subdomain   = "...my_subdomain..."
  }
  name         = "Jackie Welch"
  secret_id    = "...my_secret_id..."
  workspace_id = "bb0c69e3-72db-4134-8ba9-f78a5c0ed7aa"
}