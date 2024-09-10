resource "airbyte_source_pennylane" "my_source_pennylane" {
  configuration = {
    api_key    = "...my_api_key..."
    start_time = "2021-06-24T10:30:39.947Z"
  }
  definition_id = "ad5c4b83-3469-4d34-90e3-95a0aac55dc9"
  name          = "Richard Moen"
  secret_id     = "...my_secret_id..."
  workspace_id  = "82142799-2f65-4a71-85f2-e570ad372ede"
}