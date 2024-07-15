resource "airbyte_source_harvest" "my_source_harvest" {
  configuration = {
    account_id = "...my_account_id..."
    credentials = {
      authenticate_via_harvest_o_auth = {
        additional_properties = "{ \"see\": \"documentation\" }"
        client_id             = "...my_client_id..."
        client_secret         = "...my_client_secret..."
        refresh_token         = "...my_refresh_token..."
      }
    }
    replication_end_date   = "2017-01-25T00:00:00Z"
    replication_start_date = "2017-01-25T00:00:00Z"
  }
  definition_id = "41e4a898-5c78-4fa7-986b-df5bf91acb12"
  name          = "Helen Legros"
  secret_id     = "...my_secret_id..."
  workspace_id  = "28d89e35-1e86-48df-9f2c-5ad84a46153e"
}