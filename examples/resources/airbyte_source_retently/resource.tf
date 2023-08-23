resource "airbyte_source_retently" "my_source_retently" {
  configuration = {
    credentials = {
      source_retently_authentication_mechanism_authenticate_via_retently_o_auth_ = {
        auth_type     = "Client"
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        refresh_token = "...my_refresh_token..."
      }
    }
    source_type = "retently"
  }
  name         = "Mrs. Lamar Fritsch"
  secret_id    = "...my_secret_id..."
  workspace_id = "ba26fd36-8ba9-4216-bcb4-15835c736417"
}