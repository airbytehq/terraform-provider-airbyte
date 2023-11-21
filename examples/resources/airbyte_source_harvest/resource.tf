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
  definition_id = "bb7037ab-5561-4ce1-bb1c-adaa0e328a3b"
  name          = "Jorge Heathcote"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e04de287-b752-465f-9ff2-deb8cbf2674a"
}