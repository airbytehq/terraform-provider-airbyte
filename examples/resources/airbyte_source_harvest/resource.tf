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
  definition_id = "b5eaa64b-86a4-42db-bb85-3ec4b5e6a18b"
  name          = "Christie Kshlerin Jr."
  secret_id     = "...my_secret_id..."
  workspace_id  = "3de8da44-3bfa-4add-a9a6-dff6cb6bf32f"
}