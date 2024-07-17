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
  definition_id = "007bc041-91be-4b05-bf07-c546621bdba9"
  name          = "Victoria Haley"
  secret_id     = "...my_secret_id..."
  workspace_id  = "51ed0a81-81e6-4e55-bd9e-be7b2f5ca6ec"
}