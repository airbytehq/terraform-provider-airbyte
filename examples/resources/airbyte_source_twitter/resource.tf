resource "airbyte_source_twitter" "my_source_twitter" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    end_date              = "2022-05-19T10:38:49.102Z"
    query                 = "...my_query..."
    start_date            = "2021-11-30T06:32:05.076Z"
  }
  definition_id = "403050ea-593a-4c26-b683-f00421b6bddb"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "01babc36-0067-4c21-b3d6-3d2c2351d667"
}