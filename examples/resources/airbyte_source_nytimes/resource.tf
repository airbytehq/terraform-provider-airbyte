resource "airbyte_source_nytimes" "my_source_nytimes" {
  configuration = {
    api_key     = "...my_api_key..."
    end_date    = "1851-01"
    period      = "30"
    share_type  = "facebook"
    source_type = "nytimes"
    start_date  = "2022-08"
  }
  name         = "Cecil Bauch"
  secret_id    = "...my_secret_id..."
  workspace_id = "cd580ba7-3810-4e4f-a444-7297cd3b1dd3"
}