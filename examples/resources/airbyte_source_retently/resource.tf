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
  definition_id = "d4f6833e-1f33-403a-b045-c891fe9c8dcb"
  name          = "Miss Kendra Sauer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "73d2cf40-136d-4598-9e7d-bace4005a630"
}