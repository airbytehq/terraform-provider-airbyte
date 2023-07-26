resource "airbyte_source_pocket" "my_source_pocket" {
  configuration = {
    access_token = "...my_access_token..."
    consumer_key = "...my_consumer_key..."
    content_type = "video"
    detail_type  = "complete"
    domain       = "...my_domain..."
    favorite     = false
    search       = "...my_search..."
    since        = "2022-10-20 14:14:14"
    sort         = "site"
    source_type  = "pocket"
    state        = "all"
    tag          = "...my_tag..."
  }
  name         = "Edmund Witting"
  workspace_id = "99bc6356-2ebf-4df5-9c29-4c060b06a128"
}