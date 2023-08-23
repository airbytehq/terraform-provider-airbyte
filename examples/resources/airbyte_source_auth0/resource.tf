resource "airbyte_source_auth0" "my_source_auth0" {
  configuration = {
    base_url = "https://dev-yourOrg.us.auth0.com/"
    credentials = {
      source_auth0_authentication_method_o_auth2_access_token = {
        access_token = "...my_access_token..."
        auth_type    = "oauth2_access_token"
      }
    }
    source_type = "auth0"
  }
  name         = "Roosevelt Schultz"
  secret_id    = "...my_secret_id..."
  workspace_id = "5ff2e4b2-7537-4a8c-99e7-319c177d525f"
}