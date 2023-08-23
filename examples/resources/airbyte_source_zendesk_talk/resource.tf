resource "airbyte_source_zendesk_talk" "my_source_zendesktalk" {
  configuration = {
    credentials = {
      source_zendesk_talk_authentication_api_token = {
        api_token = "...my_api_token..."
        auth_type = "api_token"
        email     = "Brant.Walter@yahoo.com"
      }
    }
    source_type = "zendesk-talk"
    start_date  = "2020-10-15T00:00:00Z"
    subdomain   = "...my_subdomain..."
  }
  name         = "Dr. Lana Ritchie"
  secret_id    = "...my_secret_id..."
  workspace_id = "8d27b519-96b5-4b4b-90ee-f712b7a7ab03"
}