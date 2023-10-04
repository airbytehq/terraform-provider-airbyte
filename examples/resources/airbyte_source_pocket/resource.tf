resource "airbyte_source_pocket" "my_source_pocket" {
  configuration = {
    access_token = "...my_access_token..."
    consumer_key = "...my_consumer_key..."
    content_type = "image"
    detail_type  = "complete"
    domain       = "...my_domain..."
    favorite     = false
    search       = "...my_search..."
    since        = "2022-10-20 14:14:14"
    sort         = "newest"
    state        = "archive"
    tag          = "...my_tag..."
  }
  name         = "Deanna Kunde"
  secret_id    = "...my_secret_id..."
  workspace_id = "fdf7e2fa-4a63-4623-a34b-ba48ed6d0eaf"
}