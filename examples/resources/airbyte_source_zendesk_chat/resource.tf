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
  definition_id = "e012beba-22c9-4964-9ef6-30f5d8739c0e"
  name          = "Hazel Pfeffer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2ddb04c9-bce3-487d-a644-4a186797a763"
}