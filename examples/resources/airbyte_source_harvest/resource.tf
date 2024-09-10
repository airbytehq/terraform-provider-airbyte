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
  definition_id = "d83c0cc9-8dd5-4412-a565-139361b04889"
  name          = "Stacey O'Keefe"
  secret_id     = "...my_secret_id..."
  workspace_id  = "cfe2e85a-fcc9-4acc-ae7e-95c9a7c9f197"
}