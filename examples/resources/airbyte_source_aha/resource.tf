resource "airbyte_source_aha" "my_source_aha" {
  configuration = {
    api_key = "...my_api_key..."
    url     = "...my_url..."
  }
  definition_id = "a8d6eef0-4757-4630-9dbc-2dbf188dfabd"
  name          = "Mr. Colleen Botsford"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c61dffa6-9fe7-4143-a3e9-a244d7bc1a5a"
}