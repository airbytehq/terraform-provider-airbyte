resource "airbyte_source_twitter" "my_source_twitter" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    end_date              = "2022-05-19T10:38:49.102Z"
    query                 = "...my_query..."
    start_date            = "2021-11-30T06:32:05.076Z"
  }
  definition_id = "d7fd4f40-5e5a-4b8b-918f-a73077f8c131"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "01babc36-0067-4c21-b3d6-3d2c2351d667"
}