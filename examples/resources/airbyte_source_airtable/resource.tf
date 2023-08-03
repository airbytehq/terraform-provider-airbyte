resource "airbyte_source_airtable" "my_source_airtable" {
  configuration = {
    credentials = {
      access_token      = "...my_access_token..."
      auth_method       = "oauth2.0"
      client_id         = "...my_client_id..."
      client_secret     = "...my_client_secret..."
      refresh_token     = "...my_refresh_token..."
      token_expiry_date = "2022-05-19T03:53:46.149Z"
    }
    source_type = "airtable"
  }
  name         = "Jeff Walker"
  workspace_id = "b5197f92-443d-4a7c-a52b-895c537c6454"
}