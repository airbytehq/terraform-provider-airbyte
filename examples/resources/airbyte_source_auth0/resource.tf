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
  definition_id = "cdfaf2b0-5210-4208-a036-b268d758466c"
  name          = "Hector Ebert Jr."
  secret_id     = "...my_secret_id..."
  workspace_id  = "b1b394b8-4acd-4f8d-b6a4-f7e23711b260"
}