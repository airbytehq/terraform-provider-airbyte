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
  definition_id = "397c2047-5faa-4deb-a481-e413dd760cc3"
  name          = "Bert Brakus"
  secret_id     = "...my_secret_id..."
  workspace_id  = "75ee978f-160f-4457-86ac-11eb0243724c"
}