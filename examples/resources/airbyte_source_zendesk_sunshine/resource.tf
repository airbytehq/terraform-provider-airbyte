resource "airbyte_source_zendesk_sunshine" "my_source_zendesksunshine" {
  configuration = {
    credentials = {
      api_token   = "...my_api_token..."
      auth_method = "api_token"
      email       = "Raoul73@hotmail.com"
    }
    source_type = "zendesk-sunshine"
    start_date  = "2021-01-01T00:00:00Z"
    subdomain   = "...my_subdomain..."
  }
  name         = "Benny Raynor"
  workspace_id = "d2378ae3-bfc2-43d9-850a-986a495bac70"
}