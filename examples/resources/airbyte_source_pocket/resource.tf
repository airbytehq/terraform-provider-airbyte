resource "airbyte_source_pocket" "my_source_pocket" {
  configuration = {
    access_token = "...my_access_token..."
    consumer_key = "...my_consumer_key..."
    content_type = "article"
    detail_type  = "simple"
    domain       = "...my_domain..."
    favorite     = false
    search       = "...my_search..."
    since        = "2022-10-20 14:14:14"
    sort         = "title"
    source_type  = "pocket"
    state        = "unread"
    tag          = "...my_tag..."
  }
  name         = "Janie Bogisich"
  secret_id    = "...my_secret_id..."
  workspace_id = "7764eef6-d0c6-4d6e-99c7-3dd634571509"
}