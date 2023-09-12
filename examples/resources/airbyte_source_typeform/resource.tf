resource "airbyte_source_typeform" "my_source_typeform" {
  configuration = {
    credentials = {
      source_typeform_authorization_method_o_auth2_0 = {
        access_token      = "...my_access_token..."
        auth_type         = "oauth2.0"
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2021-02-23T09:05:08.511Z"
      }
    }
    form_ids = [
      "...",
    ]
    source_type = "typeform"
    start_date  = "2021-03-01T00:00:00Z"
  }
  name         = "Rosemarie Spencer"
  secret_id    = "...my_secret_id..."
  workspace_id = "aac9b4ca-a1cf-4e9e-95df-903907f37831"
}