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
  definition_id = "0427d23a-4e1d-48c7-a3c8-e5e259fe4ef6"
  name          = "Kristina Donnelly"
  secret_id     = "...my_secret_id..."
  workspace_id  = "5b5a324c-6128-4aab-bad0-730782c3e822"
}