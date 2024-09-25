resource "airbyte_source_notion" "my_source_notion" {
  configuration = {
    credentials = {
      access_token = {
        token = "...my_token..."
      }
    }
    start_date = "2020-11-16T00:00:00.000Z"
  }
  definition_id = "3a45535f-ff5d-41d3-8f0c-ce5486a3a161"
  name          = "Simon Hansen"
  secret_id     = "...my_secret_id..."
  workspace_id  = "64148acb-8b41-4d5b-b94a-01397d3dfd90"
}