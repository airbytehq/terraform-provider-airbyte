resource "airbyte_source_airtable" "my_source_airtable" {
  configuration = {
    credentials = {
      source_airtable_authentication_o_auth2_0 = {
        access_token      = "...my_access_token..."
        auth_method       = "oauth2.0"
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2022-02-16T03:38:31.705Z"
      }
    }
    source_type = "airtable"
  }
  name         = "Cody Rowe"
  secret_id    = "...my_secretId..."
  workspace_id = "2b895c53-7c64-454e-bb0b-34896c3ca5ac"
}