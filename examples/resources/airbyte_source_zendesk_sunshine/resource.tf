resource "airbyte_source_zendesk_sunshine" "my_source_zendesksunshine" {
  configuration = {
    credentials = {
      api_token = {
        api_token = "...my_api_token..."
        email     = "Hannah48@yahoo.com"
      }
    }
    start_date = "2021-01-01T00:00:00Z"
    subdomain  = "...my_subdomain..."
  }
  definition_id = "03f51ef1-7f33-4075-8552-dc86ef5bfa62"
  name          = "Adrian Klocko"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8c8ef0ca-87b0-4611-9e8d-1dd81a7a336c"
}