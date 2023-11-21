resource "airbyte_source_zendesk_sunshine" "my_source_zendesksunshine" {
  configuration = {
    credentials = {
      source_zendesk_sunshine_api_token = {
        api_token = "...my_api_token..."
        email     = "Robbie51@hotmail.com"
      }
    }
    start_date = "2021-01-01T00:00:00Z"
    subdomain  = "...my_subdomain..."
  }
  definition_id = "6f099262-2de7-4b1a-93e5-915fe5844c8d"
  name          = "Kristie Moen"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7badf74d-23a8-47a4-aabf-6ae57802daa8"
}