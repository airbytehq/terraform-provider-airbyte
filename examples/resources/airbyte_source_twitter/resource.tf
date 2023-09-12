resource "airbyte_source_twitter" "my_source_twitter" {
  configuration = {
    api_key     = "...my_api_key..."
    end_date    = "2022-05-29T22:05:47.839Z"
    query       = "...my_query..."
    source_type = "twitter"
    start_date  = "2022-02-11T15:55:53.597Z"
  }
  name         = "Elbert Kuhic"
  secret_id    = "...my_secret_id..."
  workspace_id = "10d1f655-8c99-4c72-ad2b-c0f94087d9ca"
}