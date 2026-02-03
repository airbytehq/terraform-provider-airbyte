resource "airbyte_source_glassfrog" "my_source_glassfrog" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "08260fec-1942-4dca-8ff4-8f5ece6454de"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a347e336-4946-41b8-8b30-8cb4d597c8a5"
}