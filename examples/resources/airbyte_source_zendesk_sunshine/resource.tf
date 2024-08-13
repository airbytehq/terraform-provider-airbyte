resource "airbyte_source_zendesk_sunshine" "my_source_zendesksunshine" {
  configuration = {
    credentials = {
      api_token = {
        api_token = "...my_api_token..."
        email     = "Jannie_Zulauf@hotmail.com"
      }
    }
    start_date = "2021-01-01T00:00:00Z"
    subdomain  = "...my_subdomain..."
  }
  definition_id = "badf74d2-3a87-4a42-abf6-ae57802daa82"
  name          = "Ramona Marvin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ac7526c0-e68d-441f-a947-8bd831a4caf6"
}