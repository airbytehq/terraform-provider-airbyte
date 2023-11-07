resource "airbyte_source_typeform" "my_source_typeform" {
  configuration = {
    credentials = {
      source_typeform_o_auth2_0 = {
        access_token      = "...my_access_token..."
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2022-04-17T02:08:52.624Z"
      }
    }
    form_ids = [
      "...",
    ]
    start_date = "2021-03-01T00:00:00Z"
  }
  name         = "Kelly Davis"
  secret_id    = "...my_secret_id..."
  workspace_id = "eaf419bc-59e0-44a8-a9e9-d149f3b04e32"
}