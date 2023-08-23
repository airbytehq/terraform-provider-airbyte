resource "airbyte_source_asana" "my_source_asana" {
  configuration = {
    credentials = {
      source_asana_authentication_mechanism_authenticate_via_asana_oauth_ = {
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        option_title  = "OAuth Credentials"
        refresh_token = "...my_refresh_token..."
      }
    }
    source_type = "asana"
  }
  name         = "Doug Baumbach"
  secret_id    = "...my_secret_id..."
  workspace_id = "b197cd44-e2f5-42d8-ad35-13bb6f48b656"
}