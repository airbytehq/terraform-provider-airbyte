resource "airbyte_source_luma" "my_source_luma" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "8ac29756-9a9d-4472-a20b-df29ac29764a"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "f9a79e54-7dff-491f-b4ed-17234cb7bee5"
}