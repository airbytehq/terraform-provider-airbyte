resource "airbyte_source_zendesk_talk" "my_source_zendesktalk" {
  configuration = {
    credentials = {
      api_token = "...my_api_token..."
      auth_type = "api_token"
      email     = "Lori99@hotmail.com"
    }
    source_type = "zendesk-talk"
    start_date  = "2020-10-15T00:00:00Z"
    subdomain   = "...my_subdomain..."
  }
  name         = "Ethel Stehr"
  workspace_id = "31da3edb-51fa-4d94-acc9-435137726d15"
}