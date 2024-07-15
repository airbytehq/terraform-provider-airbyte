resource "airbyte_source_delighted" "my_source_delighted" {
  configuration = {
    api_key = "...my_api_key..."
    since   = "2022-05-30T04:50:23Z"
  }
  definition_id = "f5a34ff6-80c8-48d8-a9f7-431721e4227f"
  name          = "Clyde Boehm"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6ec345b5-c1ba-4e74-b26a-8cd9c5aad47a"
}