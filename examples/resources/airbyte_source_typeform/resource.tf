resource "airbyte_source_typeform" "my_source_typeform" {
  configuration = {
    credentials = {
      source_typeform_o_auth2_0 = {
        access_token      = "...my_access_token..."
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2022-10-02T21:15:25.365Z"
      }
    }
    form_ids = [
      "...",
    ]
    start_date = "2021-03-01T00:00:00Z"
  }
  definition_id = "dbbaeb9b-5c2e-42ee-8b85-f41cf2efd5ed"
  name          = "Nancy Hansen"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e4deda30-dd3c-4fb0-aa2f-ad0584130837"
}