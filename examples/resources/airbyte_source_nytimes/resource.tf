resource "airbyte_source_nytimes" "my_source_nytimes" {
  configuration = {
    api_key    = "...my_api_key..."
    end_date   = "2022-08"
    period     = "30"
    share_type = "facebook"
    start_date = "1851-01"
  }
  definition_id = "d2c04124-4365-469f-964c-d2bcf08a635d"
  name          = "Molly Lindgren"
  secret_id     = "...my_secret_id..."
  workspace_id  = "86ceccfa-e93f-47f0-b8c4-b4f8d4f6833e"
}