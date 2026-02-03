resource "airbyte_source_lokalise" "my_source_lokalise" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    project_id            = "...my_project_id..."
  }
  definition_id = "31a57ba1-9037-4285-9adf-ae4e6baa26e0"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "89d9f65a-ee45-4118-b236-d6ade210b8ad"
}