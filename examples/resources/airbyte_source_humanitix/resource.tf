resource "airbyte_source_humanitix" "my_source_humanitix" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "16776d94-ca1e-49a9-b5ce-3e6c55a01582"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "e8b42cc6-978a-42b5-aab1-c1ea3b858618"
}