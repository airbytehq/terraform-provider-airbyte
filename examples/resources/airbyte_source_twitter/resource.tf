resource "airbyte_source_twitter" "my_source_twitter" {
  configuration = {
    api_key     = "...my_api_key..."
    end_date    = "2022-04-23T00:58:34.496Z"
    query       = "...my_query..."
    source_type = "twitter"
    start_date  = "2022-09-13T06:52:49.792Z"
  }
  name         = "Drew Kemmer"
  secret_id    = "...my_secret_id..."
  workspace_id = "49e5635b-33bc-40f9-b0c4-2fc9f4844225"
}