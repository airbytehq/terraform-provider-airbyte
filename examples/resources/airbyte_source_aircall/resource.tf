resource "airbyte_source_aircall" "my_source_aircall" {
  configuration = {
    api_id     = "...my_api_id..."
    api_token  = "...my_api_token..."
    start_date = "2022-03-01T00:00:00.000Z"
  }
  definition_id = "8d6eef04-7576-430d-9bc2-dbf188dfabd5"
  name          = "Miss Ann Bode"
  secret_id     = "...my_secret_id..."
  workspace_id  = "61dffa69-fe71-443a-be9a-244d7bc1a5a6"
}