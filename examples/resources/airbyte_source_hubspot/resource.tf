resource "airbyte_source_hubspot" "my_source_hubspot" {
  configuration = {
    credentials = {
      source_hubspot_authentication_o_auth = {
        client_id     = "123456789000"
        client_secret = "secret"
        refresh_token = "refresh_token"
      }
    }
    start_date = "2017-01-25T00:00:00Z"
  }
  name         = "Darlene Stroman"
  secret_id    = "...my_secret_id..."
  workspace_id = "bd757e59-4698-41cb-8608-691686308ead"
}