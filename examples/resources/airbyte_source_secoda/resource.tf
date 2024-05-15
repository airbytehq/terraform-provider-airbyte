resource "airbyte_source_secoda" "my_source_secoda" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "3a4eeb23-fe55-4394-ab58-b6d0d20932d7"
  name          = "Byron Lindgren"
  secret_id     = "...my_secret_id..."
  workspace_id  = "619ec398-1178-46e4-8e52-72c20971d544"
}