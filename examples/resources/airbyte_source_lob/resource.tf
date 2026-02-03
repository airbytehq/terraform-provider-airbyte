resource "airbyte_source_lob" "my_source_lob" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    limit                 = "...my_limit..."
    start_date            = "2022-12-11T10:35:06.491Z"
  }
  definition_id = "da9a9992-ccc9-4116-aefd-1ae79cb911d3"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "44435a48-c8bc-429c-b448-381dc242e978"
}