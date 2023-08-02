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
  name         = "Sandra Frami DVM"
  secret_id    = "...my_secretId..."
  workspace_id = "3981d4c7-00b6-407f-bc93-c73b9da3f2ce"
}