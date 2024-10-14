resource "airbyte_source_salesloft" "my_source_salesloft" {
  configuration = {
    credentials = {
      authenticate_via_api_key = {
        api_key = "...my_api_key..."
      }
      authenticate_via_o_auth = {
        access_token      = "...my_access_token..."
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2020-09-08T23:40:53.385Z"
      }
    }
    start_date = "2020-11-16T00:00:00Z"
  }
  definition_id = "6b7eacc4-c8d6-4961-ba68-3ac14af0e8e4"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "9ee86021-a435-499d-89be-1ea6358d6e40"
}