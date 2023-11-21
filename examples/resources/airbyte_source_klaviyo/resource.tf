resource "airbyte_source_klaviyo" "my_source_klaviyo" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2017-01-25T00:00:00Z"
  }
  definition_id = "d98f81ed-eee1-4be4-a723-eeaf419bc59e"
  name          = "Joanne Murray"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9e9d149f-3b04-4e32-9c64-9b6bc8e2c7d0"
}