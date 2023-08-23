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
  name         = "Pauline Paucek"
  secret_id    = "...my_secret_id..."
  workspace_id = "a9a35d08-6b6f-466f-af02-0e9f443b4257"
}