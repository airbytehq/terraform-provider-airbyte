resource "airbyte_source_harvest" "my_source_harvest" {
  configuration = {
    account_id = "...my_account_id..."
    credentials = {
      auth_type     = "Client"
      client_id     = "...my_client_id..."
      client_secret = "...my_client_secret..."
      refresh_token = "...my_refresh_token..."
    }
    replication_end_date   = "2017-01-25T00:00:00Z"
    replication_start_date = "2017-01-25T00:00:00Z"
    source_type            = "harvest"
  }
  name         = "Cora Hyatt"
  workspace_id = "352f7453-3994-4d78-9e3b-6e9389f5abb7"
}