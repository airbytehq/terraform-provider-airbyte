resource "airbyte_source_secoda" "my_source_secoda" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "544a65a7-d2b4-4609-94ec-6467c968cce9"
  name          = "Edna Mitchell"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8a35db32-f900-4f8c-be73-78a587702297"
}