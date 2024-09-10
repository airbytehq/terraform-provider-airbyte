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
  definition_id = "33710669-86a7-4b02-bd25-c7727b363542"
  name          = "Eric Sporer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7f0bc649-fe5b-408c-82dc-40ca1ab76639"
}