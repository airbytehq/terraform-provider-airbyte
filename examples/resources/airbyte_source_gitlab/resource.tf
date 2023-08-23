resource "airbyte_source_gitlab" "my_source_gitlab" {
  configuration = {
    api_url = "https://gitlab.company.org"
    credentials = {
      source_gitlab_authorization_method_o_auth2_0 = {
        access_token      = "...my_access_token..."
        auth_type         = "oauth2.0"
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2022-11-19T07:42:45.478Z"
      }
    }
    groups      = "airbyte.io"
    projects    = "airbyte.io/documentation"
    source_type = "gitlab"
    start_date  = "2021-03-01T00:00:00Z"
  }
  name         = "Mr. Jesse Luettgen"
  secret_id    = "...my_secret_id..."
  workspace_id = "7d56844e-ded8-45a9-865e-628bdfc2032b"
}