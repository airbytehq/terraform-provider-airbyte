resource "airbyte_source_nytimes" "my_source_nytimes" {
  configuration = {
    api_key     = "...my_api_key..."
    end_date    = "1851-01"
    period      = "1"
    share_type  = "facebook"
    source_type = "nytimes"
    start_date  = "2022-08"
  }
  name         = "Mr. Willie Kirlin V"
  secret_id    = "...my_secret_id..."
  workspace_id = "9853e9f5-43d8-4544-b9ee-224460443bc1"
}