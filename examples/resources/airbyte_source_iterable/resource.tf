resource "airbyte_source_iterable" "my_source_iterable" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2021-04-01T00:00:00Z"
  }
  definition_id = "deee1be4-e723-4eea-b419-bc59e04a869e"
  name          = "Sammy Braun"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f3b04e32-dc64-49b6-bc8e-2c7d0de0f8a2"
}