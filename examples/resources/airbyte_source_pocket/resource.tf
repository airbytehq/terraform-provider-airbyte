resource "airbyte_source_pocket" "my_source_pocket" {
  configuration = {
    access_token = "...my_access_token..."
    consumer_key = "...my_consumer_key..."
    content_type = "video"
    detail_type  = "simple"
    domain       = "...my_domain..."
    favorite     = true
    search       = "...my_search..."
    since        = "2022-10-20 14:14:14"
    sort         = "site"
    source_type  = "pocket"
    state        = "unread"
    tag          = "...my_tag..."
  }
  name         = "Ada Tromp"
  secret_id    = "...my_secret_id..."
  workspace_id = "266cbd95-f7aa-42b2-8113-695d1e6698fc"
}