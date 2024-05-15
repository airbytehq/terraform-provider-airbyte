resource "airbyte_source_pocket" "my_source_pocket" {
  configuration = {
    access_token = "...my_access_token..."
    consumer_key = "...my_consumer_key..."
    content_type = "video"
    detail_type  = "simple"
    domain       = "...my_domain..."
    favorite     = false
    search       = "...my_search..."
    since        = "2022-10-20 14:14:14"
    sort         = "newest"
    state        = "unread"
    tag          = "...my_tag..."
  }
  definition_id = "50acfec2-41f7-4364-ae1c-879583a59a82"
  name          = "Mr. Samantha Fisher II"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0178456a-4c11-473d-a2c2-77a8e2388fd0"
}