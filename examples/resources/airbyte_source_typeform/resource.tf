resource "airbyte_source_typeform" "my_source_typeform" {
  configuration = {
    credentials = {
      o_auth20 = {
        access_token      = "...my_access_token..."
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2022-07-29T12:53:45.825Z"
      }
    }
    form_ids = [
      "...",
    ]
    start_date = "2021-03-01T00:00:00Z"
  }
  definition_id = "fb2f6de2-ea36-4801-8ecd-1ad5ec49d168"
  name          = "Jennie Klocko"
  secret_id     = "...my_secret_id..."
  workspace_id  = "da8c4417-78e3-4947-a95b-8130b0d1b71f"
}