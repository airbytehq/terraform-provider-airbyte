resource "airbyte_source_pocket" "my_source_pocket" {
  configuration = {
    access_token = "...my_access_token..."
    consumer_key = "...my_consumer_key..."
    content_type = "image"
    detail_type  = "simple"
    domain       = "...my_domain..."
    favorite     = true
    search       = "...my_search..."
    since        = "2022-10-20 14:14:14"
    sort         = "title"
    state        = "archive"
    tag          = "...my_tag..."
  }
  definition_id = "537e02d4-7629-4bae-bbba-24c68990b750"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "4765e165-8e0a-4041-b564-c1ddbd283535"
}