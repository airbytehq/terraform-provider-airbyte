resource "airbyte_source_klaviyo" "my_source_klaviyo" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2017-01-25T00:00:00Z"
  }
  definition_id = "d5e5f9cf-b0d1-4e8d-bacc-e90aeed1087b"
  name          = "Everett Lang"
  secret_id     = "...my_secret_id..."
  workspace_id  = "54ce598c-c59e-4b95-af06-231c57fd8f9d"
}