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
    replication_start_date = "2017-01-25T00:00:00Z"
  }
  definition_id = "ce100c29-1a0e-4458-807d-89392892e3da"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "7a62499e-b740-4a2d-a2c0-621f38c60e24"
}