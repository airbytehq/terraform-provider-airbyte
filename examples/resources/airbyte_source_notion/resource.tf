resource "airbyte_source_notion" "my_source_notion" {
  configuration = {
    credentials = {
      source_notion_access_token = {
        token = "...my_token..."
      }
    }
    start_date = "2020-11-16T00:00:00.000Z"
  }
  name         = "Alyssa Douglas"
  secret_id    = "...my_secret_id..."
  workspace_id = "9cbeca1c-7573-4a5b-bba8-2d4c0a2cef78"
}