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
  definition_id = "2c041244-3656-49fd-a4cd-2bcf08a635d7"
  name          = "Dave Schinner"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6ceccfae-93f7-4f0f-8c4b-4f8d4f6833e1"
}