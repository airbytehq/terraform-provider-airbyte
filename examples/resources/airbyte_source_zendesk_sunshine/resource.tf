resource "airbyte_source_zendesk_sunshine" "my_source_zendesksunshine" {
  configuration = {
    credentials = {
      api_token = {
        api_token = "...my_api_token..."
        email     = "Chelsey_Schulist@gmail.com"
      }
    }
    start_date = "2021-01-01T00:00:00Z"
    subdomain  = "...my_subdomain..."
  }
  definition_id = "1ef630f5-d873-49c0-a34b-352ddb04c9bc"
  name          = "Earl Lueilwitz"
  secret_id     = "...my_secret_id..."
  workspace_id  = "66444a18-6797-4a76-be10-f99e00879e49"
}