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
  definition_id = "6e65b76b-dc3f-49ea-a358-d5b4415ac58f"
  name          = "Kristine Yundt"
  secret_id     = "...my_secret_id..."
  workspace_id  = "370ea7b0-2059-4e2e-b23f-c13e66cf8aae"
}