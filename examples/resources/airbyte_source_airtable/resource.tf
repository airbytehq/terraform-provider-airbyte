resource "airbyte_source_airtable" "my_source_airtable" {
  configuration = {
    credentials = {
      o_auth20 = {
        access_token      = "...my_access_token..."
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2022-08-17T07:42:16.884Z"
      }
    }
  }
  definition_id = "0d6ef09f-b849-4b0b-9f3d-5ca96c63354a"
  name          = "Juan Smitham"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c3d11ff9-34df-40d7-96d8-b0d90daf9186"
}