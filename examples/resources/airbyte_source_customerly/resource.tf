resource "airbyte_source_customerly" "my_source_customerly" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "3f6de8d9-a741-412d-8c1c-d31b4e4de61a"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "e7609c93-0d4a-4130-ac7f-d3f7d492ccc3"
}