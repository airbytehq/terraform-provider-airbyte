resource "airbyte_source_gitlab" "my_source_gitlab" {
  configuration = {
    api_url = "https://gitlab.com"
    credentials = {
      source_gitlab_o_auth2_0 = {
        access_token      = "...my_access_token..."
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2021-05-15T22:42:10.955Z"
      }
    }
    groups     = "airbyte.io"
    projects   = "airbyte.io/documentation"
    start_date = "2021-03-01T00:00:00Z"
  }
  name         = "Troy Johnston"
  secret_id    = "...my_secret_id..."
  workspace_id = "963e10b1-b394-4b84-acdf-8db6a4f7e237"
}