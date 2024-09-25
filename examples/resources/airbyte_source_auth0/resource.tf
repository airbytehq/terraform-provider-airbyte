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
  definition_id = "6bd0cbf5-314e-4ea0-ba21-aa37367271c7"
  name          = "Homer Medhurst"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9603df32-3c7d-4784-9b7f-8882a19738b2"
}