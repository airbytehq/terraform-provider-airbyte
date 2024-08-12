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
  definition_id = "65fdff2d-eb8c-4bf2-a74a-92033b17bfcc"
  name          = "Theresa Kertzmann"
  secret_id     = "...my_secret_id..."
  workspace_id  = "10da401f-b0fc-4527-b0b3-9994a41e4a89"
}