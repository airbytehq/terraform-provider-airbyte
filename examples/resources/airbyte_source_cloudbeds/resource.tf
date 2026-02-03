resource "airbyte_source_cloudbeds" "my_source_cloudbeds" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "50b86a00-1857-4e32-b39b-9c42bc98d019"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "8da70620-e02c-4c5e-b123-65f53add61c3"
}