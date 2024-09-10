resource "airbyte_source_pocket" "my_source_pocket" {
  configuration = {
    access_token = "...my_access_token..."
    consumer_key = "...my_consumer_key..."
    content_type = "article"
    detail_type  = "complete"
    domain       = "...my_domain..."
    favorite     = true
    search       = "...my_search..."
    since        = "2022-10-20 14:14:14"
    sort         = "site"
    state        = "unread"
    tag          = "...my_tag..."
  }
  definition_id = "f8c4b4f8-d4f6-4833-a1f3-303ab045c891"
  name          = "Ramiro Mayer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "dcb6cc1c-d73d-42cf-8013-6d5989e7dbac"
}