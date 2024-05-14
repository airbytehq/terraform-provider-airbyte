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
  definition_id = "929e4d23-a00b-4494-b7d6-8d64a810b295"
  name          = "Derrick Leannon"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d0c47c0f-9ce3-43c0-b294-c11e4e993d29"
}