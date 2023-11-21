resource "airbyte_source_zendesk_chat" "my_source_zendeskchat" {
  configuration = {
    credentials = {
      source_zendesk_chat_access_token = {
        access_token = "...my_access_token..."
      }
    }
    start_date = "2021-02-01T00:00:00Z"
    subdomain  = "...my_subdomain..."
  }
  definition_id = "f797fa8a-e012-4beb-a22c-99641ef630f5"
  name          = "Julian Kuhic"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c0e34b35-2ddb-404c-9bce-387d66444a18"
}