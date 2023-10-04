resource "airbyte_source_quickbooks" "my_source_quickbooks" {
  configuration = {
    credentials = {
      source_quickbooks_authorization_method_o_auth2_0 = {
        access_token      = "...my_access_token..."
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        realm_id          = "...my_realm_id..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2022-06-02T21:27:50.594Z"
      }
    }
    sandbox    = true
    start_date = "2021-03-20T00:00:00Z"
  }
  name         = "Ms. Rodolfo Kerluke"
  secret_id    = "...my_secret_id..."
  workspace_id = "e714fbf0-cfd3-4aed-94ef-24d0de80e3db"
}