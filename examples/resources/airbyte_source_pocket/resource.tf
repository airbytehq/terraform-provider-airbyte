resource "airbyte_source_pocket" "my_source_pocket" {
  configuration = {
    access_token = "...my_access_token..."
    consumer_key = "...my_consumer_key..."
    content_type = "article"
    detail_type  = "simple"
    domain       = "...my_domain..."
    favorite     = true
    search       = "...my_search..."
    since        = "2022-10-20 14:14:14"
    sort         = "newest"
    state        = "unread"
    tag          = "...my_tag..."
  }
  definition_id = "5b29252a-784d-42d0-b170-7475e2d6a497"
  name          = "Edward Reilly PhD"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6a28c6ee-fe59-4b72-9b22-407ce310da76"
}