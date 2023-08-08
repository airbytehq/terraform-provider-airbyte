resource "airbyte_source_harvest" "my_source_harvest" {
  configuration = {
    account_id = "...my_account_id..."
    credentials = {
      source_harvest_authentication_mechanism_authenticate_via_harvest_o_auth_ = {
        auth_type     = "Client"
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        refresh_token = "...my_refresh_token..."
      }
    }
    replication_end_date   = "2017-01-25T00:00:00Z"
    replication_start_date = "2017-01-25T00:00:00Z"
    source_type            = "harvest"
  }
  name         = "Verna Kautzer"
  secret_id    = "...my_secret_id..."
  workspace_id = "389f5abb-7f66-4255-8a28-382ac483afd2"
}