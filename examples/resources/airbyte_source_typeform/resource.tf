resource "airbyte_source_typeform" "my_source_typeform" {
  configuration = {
    credentials = {
      o_auth20 = {
        access_token      = "...my_access_token..."
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2022-09-15T17:47:30.655Z"
      }
    }
    form_ids = [
      "...",
    ]
    start_date = "2021-03-01T00:00:00Z"
  }
  definition_id = "819ff393-429d-4316-9dd8-595e9c61e20d"
  name          = "Pedro West"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b11c60c3-a7ba-4336-a48b-e45dfad9324f"
}