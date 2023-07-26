resource "airbyte_source_twitter" "my_source_twitter" {
  configuration = {
    api_key     = "...my_api_key..."
    end_date    = "2021-08-26T23:34:52.732Z"
    query       = "...my_query..."
    source_type = "twitter"
    start_date  = "2021-07-13T14:46:12.099Z"
  }
  name         = "Rafael Balistreri"
  workspace_id = "25894ea7-63d5-4c72-b95b-785148d6d549"
}