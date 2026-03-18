resource "airbyte_source_planhat" "my_source_planhat" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_token             = "...my_api_token..."
  }
  definition_id = "03fdd212-bd09-4e7b-b472-5b8f1b73969b"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "d46ff259-de23-4993-8c72-82757a04e149"
}