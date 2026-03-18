resource "airbyte_source_omnisend" "my_source_omnisend" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "e7f0c5e2-4815-48c4-90cf-f47124209835"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a13b2755-0e63-4ece-b081-c7f229a01fe4"
}