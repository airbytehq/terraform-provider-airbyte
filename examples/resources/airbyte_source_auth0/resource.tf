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
  definition_id = "8905c854-3b91-484c-ac7d-cadad2938da5"
  name          = "Tonya Hand"
  secret_id     = "...my_secret_id..."
  workspace_id  = "880f00a3-0dde-4f9a-90fa-7f8f441b58df"
}