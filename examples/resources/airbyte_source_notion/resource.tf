resource "airbyte_source_notion" "my_source_notion" {
  configuration = {
    credentials = {
      access_token = {
        token = "...my_token..."
      }
    }
    start_date = "2020-11-16T00:00:00.000Z"
  }
  definition_id = "7242137f-e2e9-4e26-84c1-04f1dbe3b1f2"
  name          = "Daniel Fritsch"
  secret_id     = "...my_secret_id..."
  workspace_id  = "75738476-5c77-4418-814d-1f263651b77f"
}