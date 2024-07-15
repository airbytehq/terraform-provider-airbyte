resource "airbyte_source_typeform" "my_source_typeform" {
  configuration = {
    credentials = {
      o_auth20 = {
        access_token      = "...my_access_token..."
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2021-02-27T17:24:02.669Z"
      }
    }
    form_ids = [
      "...",
    ]
    start_date = "2021-03-01T00:00:00Z"
  }
  definition_id = "b5c2e2ee-8b85-4f41-8f2e-fd5ed605e9e4"
  name          = "Darin Spinka"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0dd3cfb0-aa2f-4ad0-9841-30837d3e5de4"
}