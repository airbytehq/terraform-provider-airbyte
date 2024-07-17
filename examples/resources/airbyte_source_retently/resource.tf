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
  definition_id = "1cd73d2c-f401-436d-9989-e7dbace4005a"
  name          = "Sheila Bahringer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "76c58b5d-a21f-4739-86a7-1e992c2b8105"
}