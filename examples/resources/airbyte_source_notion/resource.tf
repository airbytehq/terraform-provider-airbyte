resource "airbyte_source_notion" "my_source_notion" {
  configuration = {
    credentials = {
      access_token = {
        token = "...my_token..."
      }
    }
    start_date = "2020-11-16T00:00:00.000Z"
  }
  definition_id = "fe0e5e5f-386d-40ac-9af3-c6558d9b03d2"
  name          = "Jeannette Ward"
  secret_id     = "...my_secret_id..."
  workspace_id  = "dbadc477-cb62-4b59-b9f1-ee4249578a5b"
}