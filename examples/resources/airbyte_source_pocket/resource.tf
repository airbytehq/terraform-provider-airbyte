resource "airbyte_source_pocket" "my_source_pocket" {
  configuration = {
    access_token = "...my_access_token..."
    consumer_key = "...my_consumer_key..."
    content_type = "image"
    detail_type  = "simple"
    domain       = "...my_domain..."
    favorite     = false
    search       = "...my_search..."
    since        = "2022-10-20 14:14:14"
    sort         = "title"
    state        = "all"
    tag          = "...my_tag..."
  }
  definition_id = "25e4ee4a-51ab-4e7b-be4e-8da5f867ba5c"
  name          = "Felix Swaniawski"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8a2cc404-7b12-40c3-acc1-558e983f33bb"
}