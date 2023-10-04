resource "airbyte_source_auth0" "my_source_auth0" {
  configuration = {
    base_url = "https://dev-yourOrg.us.auth0.com/"
    credentials = {
      source_auth0_authentication_method_o_auth2_access_token = {
        access_token = "...my_access_token..."
      }
    }
    start_date = "2023-08-05T00:43:59.244Z"
  }
  name         = "Merle Nicolas"
  secret_id    = "...my_secret_id..."
  workspace_id = "beba7dc7-cde8-4f8d-8392-aab15fb458ba"
}