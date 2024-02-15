resource "airbyte_source_pocket" "my_source_pocket" {
  configuration = {
    access_token = "...my_access_token..."
    consumer_key = "...my_consumer_key..."
    content_type = "video"
    detail_type  = "complete"
    domain       = "...my_domain..."
    favorite     = true
    search       = "...my_search..."
    since        = "2022-10-20 14:14:14"
    sort         = "newest"
    state        = "unread"
    tag          = "...my_tag..."
  }
  definition_id = "c77a4e3a-a4d1-4c74-bcd7-d939b8b6b2c0"
  name          = "Todd Beer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8be08607-521b-421e-a9bc-9d1c88f1ee12"
}