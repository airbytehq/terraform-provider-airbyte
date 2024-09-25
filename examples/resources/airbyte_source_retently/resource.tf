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
  definition_id = "9da06c23-9e7a-4f3c-a2cc-2a5392d74588"
  name          = "Miss Gary Gerhold II"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7267ce86-a322-4e02-b7e6-dd49df5c3592"
}