resource "airbyte_source_lemlist" "my_source_lemlist" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "64cc8788-ff77-4a58-933f-7738d63dc7b7"
  name          = "Ms. Hugh Reynolds"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6167f1e8-f004-42f9-a210-b5c8f204e6a7"
}