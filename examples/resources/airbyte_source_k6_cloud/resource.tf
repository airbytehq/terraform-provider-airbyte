resource "airbyte_source_k6_cloud" "my_source_k6cloud" {
  configuration = {
    api_token = "...my_api_token..."
  }
  definition_id = "7a648857-11ab-494f-a75a-513e00977793"
  name          = "Harry King III"
  secret_id     = "...my_secret_id..."
  workspace_id  = "dd86b4fb-de6a-4e53-9551-08cd8df8fdda"
}