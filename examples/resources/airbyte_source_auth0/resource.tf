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
  definition_id = "c48ec8b4-573d-466d-807e-52a2e4396e74"
  name          = "Tiffany Waters"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d50959a4-fa50-4e80-bc86-bd0cbf5314ee"
}