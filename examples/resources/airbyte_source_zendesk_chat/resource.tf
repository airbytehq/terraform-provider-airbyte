resource "airbyte_source_zendesk_chat" "my_source_zendeskchat" {
  configuration = {
    credentials = {
      access_token = {
        access_token = "...my_access_token..."
      }
    }
    start_date = "2021-02-01T00:00:00Z"
    subdomain  = "...my_subdomain..."
  }
  definition_id = "c0e34b35-2ddb-404c-9bce-387d66444a18"
  name          = "Claudia Mills"
  secret_id     = "...my_secret_id..."
  workspace_id  = "763e10f9-9e00-4879-a494-84a748552064"
}