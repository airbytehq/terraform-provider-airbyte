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
  name         = "Gertrude Russel Jr."
  secret_id    = "...my_secret_id..."
  workspace_id = "503d8bb3-1180-4f73-9ae9-e057eb809e28"
}