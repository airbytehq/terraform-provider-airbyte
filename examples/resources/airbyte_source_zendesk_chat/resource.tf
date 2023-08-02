resource "airbyte_source_zendesk_chat" "my_source_zendeskchat" {
  configuration = {
    credentials = {
      source_zendesk_chat_authorization_method_access_token = {
        access_token = "...my_access_token..."
        credentials  = "access_token"
      }
    }
    source_type = "zendesk-chat"
    start_date  = "2021-02-01T00:00:00Z"
    subdomain   = "...my_subdomain..."
  }
  name         = "Phil Emmerich"
  secret_id    = "...my_secretId..."
  workspace_id = "1ad31bec-b83d-4237-8ae3-bfc23d9450a9"
}