resource "airbyte_source_zendesk_sunshine" "my_source_zendesksunshine" {
  configuration = {
    credentials = {
      api_token = {
        api_token = "...my_api_token..."
        email     = "Elna.Schamberger@yahoo.com"
      }
    }
    start_date = "2021-01-01T00:00:00Z"
    subdomain  = "...my_subdomain..."
  }
  definition_id = "ed35fd47-1260-4525-9781-224214e979a9"
  name          = "Brandy Kuphal"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c6ec23f8-9368-434b-b7f2-56aa2eed97a7"
}