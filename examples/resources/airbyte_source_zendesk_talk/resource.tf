resource "airbyte_source_zendesk_talk" "my_source_zendesktalk" {
  configuration = {
    credentials = {
      source_zendesk_talk_authentication_api_token = {
        api_token = "...my_api_token..."
        auth_type = "api_token"
        email     = "Elliott.Feeney@yahoo.com"
      }
    }
    source_type = "zendesk-talk"
    start_date  = "2020-10-15T00:00:00Z"
    subdomain   = "...my_subdomain..."
  }
  name         = "Sara Jast II"
  secret_id    = "...my_secretId..."
  workspace_id = "321b832a-56d6-4918-8ff6-0eb9a6658e69"
}