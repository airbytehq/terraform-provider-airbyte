resource "airbyte_source_rss" "my_source_rss" {
  configuration = {
    url = "...my_url..."
  }
  definition_id = "ab045c89-1fe9-4c8d-8b6c-c1cd73d2cf40"
  name          = "Kim Homenick"
  secret_id     = "...my_secret_id..."
  workspace_id  = "989e7dba-ce40-405a-a307-276c58b5da21"
}