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
  name         = "Dewey Schmeler DVM"
  secret_id    = "...my_secret_id..."
  workspace_id = "f5d4e2ae-4fb5-4cb3-9d17-638f1edb7835"
}