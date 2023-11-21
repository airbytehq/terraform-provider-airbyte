resource "airbyte_source_airtable" "my_source_airtable" {
  configuration = {
    credentials = {
      source_airtable_o_auth2_0 = {
        access_token      = "...my_access_token..."
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2021-04-10T21:26:19.630Z"
      }
    }
  }
  definition_id = "54814afe-b93d-44bb-9e9f-2bb80cd3fe4a"
  name          = "Todd Lockman"
  secret_id     = "...my_secret_id..."
  workspace_id  = "38c45275-6445-4179-b0ed-8d43c0dabba6"
}