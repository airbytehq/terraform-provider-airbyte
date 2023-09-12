resource "airbyte_source_hubspot" "my_source_hubspot" {
  configuration = {
    credentials = {
      source_hubspot_authentication_o_auth = {
        client_id         = "123456789000"
        client_secret     = "secret"
        credentials_title = "OAuth Credentials"
        refresh_token     = "refresh_token"
      }
    }
    source_type = "hubspot"
    start_date  = "2017-01-25T00:00:00Z"
  }
  name         = "Mr. Tomas Wisozk DVM"
  secret_id    = "...my_secret_id..."
  workspace_id = "9f443b42-57b9-492c-8dbd-a6a61efa2198"
}