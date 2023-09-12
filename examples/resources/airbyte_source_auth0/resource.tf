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
    start_date  = "2023-08-05T00:43:59.244Z"
  }
  name         = "Willard McLaughlin"
  secret_id    = "...my_secret_id..."
  workspace_id = "75dad636-c600-4503-98bb-31180f739ae9"
}