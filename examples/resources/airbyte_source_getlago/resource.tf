resource "airbyte_source_getlago" "my_source_getlago" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    api_url               = "https://api.getlago.com/api/v1"
  }
  definition_id = "e1a3866b-d3b2-43b6-b6d7-8c1ee4d7f53f"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "97f7bde2-4d89-42d7-bfa2-4b297fa19493"
}