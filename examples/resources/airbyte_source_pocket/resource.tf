resource "airbyte_source_pocket" "my_source_pocket" {
  configuration = {
    access_token          = "...my_access_token..."
    additional_properties = "{ \"see\": \"documentation\" }"
    consumer_key          = "...my_consumer_key..."
    content_type          = "image"
    detail_type           = "simple"
    domain                = "...my_domain..."
    favorite              = false
    search                = "...my_search..."
    since                 = "2022-10-20 14:14:14"
    sort                  = "title"
    state                 = "archive"
    tag                   = "...my_tag..."
  }
  definition_id = "b0dd65f1-081f-4731-9c51-38e9e6aa0ebf"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "4765e165-8e0a-4041-b564-c1ddbd283535"
}