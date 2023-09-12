resource "airbyte_source_notion" "my_source_notion" {
  configuration = {
    credentials = {
      source_notion_authenticate_using_access_token = {
        auth_type = "token"
        token     = "...my_token..."
      }
    }
    source_type = "notion"
    start_date  = "2020-11-16T00:00:00.000Z"
  }
  name         = "Francisco Yost"
  secret_id    = "...my_secret_id..."
  workspace_id = "cb35d176-38f1-4edb-b835-9ecc5cb860f8"
}