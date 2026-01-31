resource "airbyte_source_thinkific" "my_source_thinkific" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    subdomain             = "...my_subdomain..."
  }
  definition_id = "c20b8f9c-7ab6-4eba-a702-8f9f597b261f"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "d9c925df-67b8-46d6-9cd9-848682cb809e"
}