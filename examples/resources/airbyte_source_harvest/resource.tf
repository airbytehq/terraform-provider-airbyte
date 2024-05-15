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
  definition_id = "6cf9b79e-2328-488b-abde-25154a52da80"
  name          = "Todd Rodriguez"
  secret_id     = "...my_secret_id..."
  workspace_id  = "49853a69-5093-45ad-936c-5004734e30b4"
}