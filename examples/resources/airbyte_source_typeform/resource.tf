resource "airbyte_source_typeform" "my_source_typeform" {
  configuration = {
    credentials = {
      o_auth20 = {
        access_token      = "...my_access_token..."
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2022-10-08T22:41:37.886Z"
      }
    }
    form_ids = [
      "...",
    ]
    start_date = "2021-03-01T00:00:00Z"
  }
  definition_id = "1a0d51fb-8be0-4416-8b49-da06c239e7af"
  name          = "Lynne Paucek"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c2a5392d-7458-4890-8090-47267ce86a32"
}