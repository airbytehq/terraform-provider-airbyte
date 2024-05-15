resource "airbyte_source_klaviyo" "my_source_klaviyo" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2017-01-25T00:00:00Z"
  }
  definition_id = "41225651-3936-41b0-8889-26ab9cfe2e85"
  name          = "Emilio Roob"
  secret_id     = "...my_secret_id..."
  workspace_id  = "acc6e7e9-5c9a-47c9-b197-511d62479658"
}