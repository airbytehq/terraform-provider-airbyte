resource "airbyte_source_hubspot" "my_source_hubspot" {
  configuration = {
    credentials = {
      client_id         = "123456789000"
      client_secret     = "secret"
      credentials_title = "OAuth Credentials"
      refresh_token     = "refresh_token"
    }
    source_type = "hubspot"
    start_date  = "2017-01-25T00:00:00Z"
  }
  name         = "Yvette Zboncak"
  workspace_id = "e591bc8b-def3-4612-b63c-205fda840774"
}