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
    sort         = "title"
    state        = "unread"
    tag          = "...my_tag..."
  }
  definition_id = "f33bbc2f-8e75-4b95-ae5d-d11c77a4e3aa"
  name          = "Nadine Breitenberg"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4fcd7d93-9b8b-46b2-8092-0aa8be086075"
}