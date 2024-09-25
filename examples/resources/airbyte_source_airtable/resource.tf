resource "airbyte_source_airtable" "my_source_airtable" {
  configuration = {
    credentials = {
      o_auth20 = {
        access_token      = "...my_access_token..."
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2021-06-09T01:32:17.584Z"
      }
    }
  }
  definition_id = "bb57bf00-1ddb-43cf-874d-627d201b0d06"
  name          = "Johnathan Renner"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e6b9f25a-a9f8-4c7d-8107-048d9ffe8959"
}