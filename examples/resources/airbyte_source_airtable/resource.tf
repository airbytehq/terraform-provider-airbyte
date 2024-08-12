resource "airbyte_source_airtable" "my_source_airtable" {
  configuration = {
    credentials = {
      o_auth20 = {
        access_token      = "...my_access_token..."
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2022-08-20T20:34:02.471Z"
      }
    }
  }
  definition_id = "27564451-7930-4ed8-943c-0dabba6ef9fc"
  name          = "Krista Franecki"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4fd252e5-7aa6-473d-a825-9f0c220e39e1"
}