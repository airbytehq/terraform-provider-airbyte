resource "airbyte_source_twitter" "my_source_twitter" {
  configuration = {
    api_key     = "...my_api_key..."
    end_date    = "2020-12-31T16:49:13.658Z"
    query       = "...my_query..."
    source_type = "twitter"
    start_date  = "2021-05-21T04:49:52.479Z"
  }
  name         = "Marco Gleichner"
  secret_id    = "...my_secret_id..."
  workspace_id = "a1cfe9e1-5df9-4039-87f3-7831983d42e5"
}