resource "airbyte_source_typeform" "my_source_typeform" {
  configuration = {
    credentials = {
      o_auth20 = {
        access_token      = "...my_access_token..."
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2020-01-31T16:32:17.420Z"
      }
    }
    form_ids = [
      "...",
    ]
    start_date = "2021-03-01T00:00:00Z"
  }
  definition_id = "e297d6f5-cf39-4b34-b958-9f42198f3282"
  name          = "Latoya Leuschke"
  secret_id     = "...my_secret_id..."
  workspace_id  = "159ebc2b-7c1d-4354-8fbb-e2d8a9d00100"
}