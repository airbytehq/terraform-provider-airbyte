resource "airbyte_source_greenhouse" "my_source_greenhouse" {
  configuration = {
    api_key = "...my_api_key..."
  }
  name         = "Faith Boyer"
  secret_id    = "...my_secret_id..."
  workspace_id = "7e8fd2f1-93d4-4f9a-b29a-2f8317dec4e3"
}