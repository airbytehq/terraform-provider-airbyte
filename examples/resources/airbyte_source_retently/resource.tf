resource "airbyte_source_retently" "my_source_retently" {
  configuration = {
    credentials = {
      authenticate_via_retently_o_auth = {
        additional_properties = "{ \"see\": \"documentation\" }"
        client_id             = "...my_client_id..."
        client_secret         = "...my_client_secret..."
        refresh_token         = "...my_refresh_token..."
      }
      authenticate_with_api_token = {
        additional_properties = "{ \"see\": \"documentation\" }"
        api_key               = "...my_api_key..."
      }
    }
  }
  definition_id = "cca4315f-0685-4a8f-b821-e7a8f8d7f4b8"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "fff20602-c218-4268-935e-a746cd7a8c6c"
}