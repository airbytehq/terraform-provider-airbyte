resource "airbyte_source_gitlab" "my_source_gitlab" {
  configuration = {
    api_url = "gitlab.com"
    credentials = {
      source_gitlab_authorization_method_o_auth2_0 = {
        access_token      = "...my_access_token..."
        auth_type         = "oauth2.0"
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2020-10-08T09:18:50.076Z"
      }
    }
    groups      = "airbyte.io"
    projects    = "airbyte.io/documentation"
    source_type = "gitlab"
    start_date  = "2021-03-01T00:00:00Z"
  }
  name         = "Eula Daugherty Sr."
  secret_id    = "...my_secretId..."
  workspace_id = "87d56844-eded-485a-9065-e628bdfc2032"
}