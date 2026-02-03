resource "airbyte_source_nocrm" "my_source_nocrm" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    subdomain             = "...my_subdomain..."
  }
  definition_id = "9bbc8186-4a5e-442a-9bde-3f0fd3fcc786"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a57f794b-9896-4830-9442-f0c77b485277"
}