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
  definition_id = "a7d8001c-be4b-47da-a2d7-b021550aada4"
  name          = "Miss Dominick Barton"
  secret_id     = "...my_secret_id..."
  workspace_id  = "56ee294a-dbc5-4bd3-8078-9cf0b8d2c041"
}