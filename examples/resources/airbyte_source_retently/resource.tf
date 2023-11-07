resource "airbyte_source_retently" "my_source_retently" {
  configuration = {
    credentials = {
      authenticate_via_retently_o_auth = {
        additional_properties = "{ \"see\": \"documentation\" }"
        client_id             = "...my_client_id..."
        client_secret         = "...my_client_secret..."
        refresh_token         = "...my_refresh_token..."
      }
    }
  }
  name         = "Rosie Baumbach"
  secret_id    = "...my_secret_id..."
  workspace_id = "0eb91c3d-f259-4349-952d-c8258f30a271"
}