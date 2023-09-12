resource "airbyte_source_pocket" "my_source_pocket" {
  configuration = {
    access_token = "...my_access_token..."
    consumer_key = "...my_consumer_key..."
    content_type = "image"
    detail_type  = "complete"
    domain       = "...my_domain..."
    favorite     = true
    search       = "...my_search..."
    since        = "2022-10-20 14:14:14"
    sort         = "site"
    source_type  = "pocket"
    state        = "unread"
    tag          = "...my_tag..."
  }
  name         = "Christina Bode"
  secret_id    = "...my_secret_id..."
  workspace_id = "e2239e8f-25cd-40d1-9d95-9f439e39266c"
}