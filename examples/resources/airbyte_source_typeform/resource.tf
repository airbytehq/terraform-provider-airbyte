resource "airbyte_source_typeform" "my_source_typeform" {
  configuration = {
    credentials = {
      o_auth20 = {
        access_token      = "...my_access_token..."
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2022-03-13T08:55:00.864Z"
      }
    }
    form_ids = [
      "...",
    ]
    start_date = "2021-03-01T00:00:00Z"
  }
  definition_id = "7ccff9d0-7247-447a-8b37-eb205ddb7f1b"
  name          = "Janet Bogisich"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e07e1036-43a6-4dfd-aa60-225b2ac62eb1"
}