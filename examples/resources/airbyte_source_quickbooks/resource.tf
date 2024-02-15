resource "airbyte_source_quickbooks" "my_source_quickbooks" {
  configuration = {
    credentials = {
      o_auth20 = {
        access_token      = "...my_access_token..."
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        realm_id          = "...my_realm_id..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2022-06-12T08:16:30.564Z"
      }
    }
    sandbox    = true
    start_date = "2021-03-20T00:00:00Z"
  }
  definition_id = "b821f9c8-efa4-40dc-a07c-50e6f1211e1f"
  name          = "Jonathon Deckow"
  secret_id     = "...my_secret_id..."
  workspace_id  = "90cc0df9-4191-4989-aa20-9c167af7bc34"
}