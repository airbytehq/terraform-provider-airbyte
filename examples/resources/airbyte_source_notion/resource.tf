resource "airbyte_source_notion" "my_source_notion" {
  configuration = {
    credentials = {
      source_notion_authenticate_using_access_token = {
        auth_type = "token"
        token     = "...my_token..."
      }
    }
    source_type = "notion"
    start_date  = "2020-11-16T00:00:00.000Z"
  }
  name         = "Ms. Elisa Carroll"
  secret_id    = "...my_secret_id..."
  workspace_id = "ac1e41d8-a23c-423e-b4f2-dfa4a197f6de"
}