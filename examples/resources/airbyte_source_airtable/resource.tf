resource "airbyte_source_airtable" "my_source_airtable" {
  configuration = {
    credentials = {
      source_airtable_authentication_o_auth2_0 = {
        access_token      = "...my_access_token..."
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2022-02-15T01:33:45.237Z"
      }
    }
  }
  name         = "Vicki Smitham"
  secret_id    = "...my_secret_id..."
  workspace_id = "48e4e42a-5305-40a9-afbc-66c913a5b780"
}