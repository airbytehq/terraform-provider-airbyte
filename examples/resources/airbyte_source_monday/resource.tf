resource "airbyte_source_monday" "my_source_monday" {
  configuration = {
    credentials = {
      api_token = {
        api_token = "...my_api_token..."
      }
    }
  }
  definition_id = "92c2050f-df2b-4a7d-83d2-0d3384e15ed5"
  name          = "Dolores Cruickshank"
  secret_id     = "...my_secret_id..."
  workspace_id  = "88faeaba-deb9-43c7-b287-9b6069b6a28d"
}