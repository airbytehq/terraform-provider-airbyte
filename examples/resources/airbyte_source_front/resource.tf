resource "airbyte_source_front" "my_source_front" {
  configuration = {
    api_key    = "...my_api_key..."
    page_limit = "...my_page_limit..."
    start_date = "2021-03-09T10:03:43.663Z"
  }
  definition_id = "e1a19bd4-87cb-4e60-b701-5a81b05d6c35"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "8be9bca5-1753-4d9a-88e9-0ead4ee93908"
}