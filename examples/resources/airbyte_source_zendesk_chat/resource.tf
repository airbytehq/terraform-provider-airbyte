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
  definition_id = "a08ea6fb-1c9f-4ea1-b3f2-b7b846f1d4ea"
  name          = "Cindy Glover PhD"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7485ff0c-13c5-44df-81d9-04e542b79de7"
}