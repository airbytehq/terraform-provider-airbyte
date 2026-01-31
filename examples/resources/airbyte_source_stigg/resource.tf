resource "airbyte_source_stigg" "my_source_stigg" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "24b0f082-3ddf-492a-83a1-5d0a66237ac9"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "6f5a8ad2-3e44-4df3-91b1-f426d0793ab9"
}