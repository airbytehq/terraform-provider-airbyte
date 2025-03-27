resource "airbyte_source_auth0" "my_source_auth0" {
  configuration = {
    base_url = "https://dev-yourOrg.us.auth0.com/"
    credentials = {
      o_auth2_confidential_application = {
        audience      = "https://dev-yourOrg.us.auth0.com/api/v2/"
        client_id     = "Client_ID"
        client_secret = "Client_Secret"
      }
    }
    start_date = "2023-08-05T00:43:59.244Z"
  }
  definition_id = "c81522f4-2b1b-4d41-9891-5186609bc62d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "0f188999-803b-497f-bcdb-fe3868611adc"
}