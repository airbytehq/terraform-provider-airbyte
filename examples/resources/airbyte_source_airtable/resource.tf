resource "airbyte_source_airtable" "my_source_airtable" {
  configuration = {
    credentials = {
      o_auth20 = {
        access_token      = "...my_access_token..."
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2022-09-01T07:21:46.506Z"
      }
    }
  }
  definition_id = "cc193137-2214-4027-ae71-b638bd648d54"
  name          = "Ryan Green"
  secret_id     = "...my_secret_id..."
  workspace_id  = "eb93d4bb-de9f-42bb-80cd-3fe4ad282938"
}