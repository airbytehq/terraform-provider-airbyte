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
    sort         = "title"
    state        = "archive"
    tag          = "...my_tag..."
  }
  definition_id = "a6950f00-07e3-4304-bd95-358a56819d2a"
  name          = "Doyle Schneider PhD"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7e3d24df-d3d5-4123-82f9-97d059d38a2e"
}