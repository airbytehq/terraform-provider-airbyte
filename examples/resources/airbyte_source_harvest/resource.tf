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
  definition_id = "e680e441-7c6f-44b5-89c8-206a4b043ef0"
  name          = "Miss Tomas Homenick"
  secret_id     = "...my_secret_id..."
  workspace_id  = "5b726765-eab1-4ad8-8295-4bd759bdc8b9"
}