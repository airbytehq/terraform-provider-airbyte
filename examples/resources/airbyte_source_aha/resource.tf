resource "airbyte_source_aha" "my_source_aha" {
  configuration = {
    api_key = "...my_api_key..."
    url     = "...my_url..."
  }
  definition_id = "6eef0475-7630-4ddb-82db-f188dfabd571"
  name          = "Joyce Pagac"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1dffa69f-e714-43a3-a9a2-44d7bc1a5a6e"
}