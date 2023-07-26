resource "airbyte_source_recreation" "my_source_recreation" {
  configuration = {
    apikey          = "...my_apikey..."
    query_campsites = "...my_query_campsites..."
    source_type     = "recreation"
  }
  name         = "Ann Connelly III"
  workspace_id = "d4e5b72f-0f54-4856-8a04-24e00a1d6eb9"
}