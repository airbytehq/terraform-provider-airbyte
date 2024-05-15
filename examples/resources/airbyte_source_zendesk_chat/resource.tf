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
  definition_id = "a90b3fc5-8aed-4966-be07-de9609725c6d"
  name          = "Angie Hartmann"
  secret_id     = "...my_secret_id..."
  workspace_id  = "35039f4e-4098-4bb8-82a2-3b3c01346218"
}