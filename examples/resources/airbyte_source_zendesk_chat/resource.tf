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
  name         = "Mabel Lebsack MD"
  secret_id    = "...my_secret_id..."
  workspace_id = "3fd3c81d-a10f-48c2-bdf9-31da3edb51fa"
}