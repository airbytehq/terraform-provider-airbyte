resource "airbyte_source_zendesk_chat" "my_source_zendeskchat" {
  configuration = {
    credentials = {
      source_zendesk_chat_authorization_method_access_token = {
        access_token = "...my_access_token..."
      }
    }
    start_date = "2021-02-01T00:00:00Z"
    subdomain  = "...my_subdomain..."
  }
  name         = "Kelly Kris"
  secret_id    = "...my_secret_id..."
  workspace_id = "8933f773-8d63-4dc7-b7f8-b16c6167f1e8"
}