resource "airbyte_source_airtable" "my_source_airtable" {
  configuration = {
    credentials = {
      source_airtable_authentication_o_auth2_0 = {
        access_token      = "...my_access_token..."
        auth_method       = "oauth2.0"
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2020-12-11T09:39:15.481Z"
      }
    }
    source_type = "airtable"
  }
  name         = "Vincent Frami"
  secret_id    = "...my_secret_id..."
  workspace_id = "c2beb477-373c-48d7-af64-d1db1f2c4310"
}