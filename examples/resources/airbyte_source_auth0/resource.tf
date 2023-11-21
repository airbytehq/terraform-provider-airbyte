resource "airbyte_source_auth0" "my_source_auth0" {
  configuration = {
    base_url = "https://dev-yourOrg.us.auth0.com/"
    credentials = {
      o_auth2_access_token = {
        access_token = "...my_access_token..."
      }
    }
    start_date = "2023-08-05T00:43:59.244Z"
  }
  definition_id = "f51ed0a8-181e-46e5-9fd9-ebe7b2f5ca6e"
  name          = "Dallas Wiza"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2b052102-08e0-436b-a68d-758466c963e1"
}