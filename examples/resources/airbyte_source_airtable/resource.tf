resource "airbyte_source_airtable" "my_source_airtable" {
  configuration = {
    credentials = {
      source_airtable_authentication_o_auth2_0 = {
        access_token      = "...my_access_token..."
        auth_method       = "oauth2.0"
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2021-08-01T09:41:55.270Z"
      }
    }
    source_type = "airtable"
  }
  name         = "Tommie Klocko"
  secret_id    = "...my_secret_id..."
  workspace_id = "eac55a97-41d3-4113-9296-5bb8a7202611"
}