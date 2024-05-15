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
  definition_id = "e1c5ff22-3389-4204-a261-684e73ef602c"
  name          = "Raymond Halvorson"
  secret_id     = "...my_secret_id..."
  workspace_id  = "97cf5896-557c-4e17-8cd6-b10d6388d4fd"
}