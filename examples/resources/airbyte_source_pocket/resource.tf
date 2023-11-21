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
    sort         = "newest"
    state        = "unread"
    tag          = "...my_tag..."
  }
  definition_id = "da763315-0acf-4ec2-81f7-3646e1c87958"
  name          = "Brandi Hane"
  secret_id     = "...my_secret_id..."
  workspace_id  = "82553101-4017-4845-aa4c-1173de2c277a"
}