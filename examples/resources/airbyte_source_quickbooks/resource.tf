resource "airbyte_source_quickbooks" "my_source_quickbooks" {
  configuration = {
    credentials = {
      source_quickbooks_authorization_method_o_auth2_0 = {
        access_token      = "...my_access_token..."
        auth_type         = "oauth2.0"
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        realm_id          = "...my_realm_id..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2022-09-15T16:38:10.985Z"
      }
    }
    sandbox     = false
    source_type = "quickbooks"
    start_date  = "2021-03-20T00:00:00+00:00"
  }
  name         = "Gladys O'Hara"
  secret_id    = "...my_secret_id..."
  workspace_id = "a1b8fe99-731a-4dc0-9d85-ae2dfb70fb38"
}