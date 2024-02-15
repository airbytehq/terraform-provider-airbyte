resource "airbyte_source_airtable" "my_source_airtable" {
  configuration = {
    credentials = {
      o_auth20 = {
        access_token      = "...my_access_token..."
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2020-08-03T12:00:22.257Z"
      }
    }
  }
  definition_id = "6e828b1d-2ddb-45da-a9ea-927cae7b29c8"
  name          = "Casey Hoeger"
  secret_id     = "...my_secret_id..."
  workspace_id  = "5628652e-0ff8-43c2-9b51-7b16f1f8846b"
}