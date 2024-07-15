resource "airbyte_source_notion" "my_source_notion" {
  configuration = {
    credentials = {
      access_token = {
        token = "...my_token..."
      }
    }
    start_date = "2020-11-16T00:00:00.000Z"
  }
  definition_id = "91e25444-d223-44fd-9d8e-a1c7d43320fa"
  name          = "Miss Marshall Sauer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "dab7e73a-5971-4814-a4dc-1f633abc58a5"
}