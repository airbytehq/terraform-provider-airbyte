resource "airbyte_source_quickbooks" "my_source_quickbooks" {
  configuration = {
    credentials = {
      source_quickbooks_o_auth2_0 = {
        access_token      = "...my_access_token..."
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        realm_id          = "...my_realm_id..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2020-06-15T02:42:19.793Z"
      }
    }
    sandbox    = true
    start_date = "2021-03-20T00:00:00Z"
  }
  definition_id = "054daa84-a4e2-48fe-a10a-8a64b77a4fe6"
  name          = "Patricia Dickens"
  secret_id     = "...my_secret_id..."
  workspace_id  = "88c95001-e515-4b2e-b405-22a67dad65e8"
}