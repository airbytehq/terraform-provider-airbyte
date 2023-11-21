resource "airbyte_source_getlago" "my_source_getlago" {
  configuration = {
    api_key = "...my_api_key..."
    api_url = "...my_api_url..."
  }
  definition_id = "25b4bae6-1112-4211-be87-b490ecc6bf75"
  name          = "Mrs. Willie Bins"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c803c831-1a97-4a1a-a894-9629432a02ce"
}