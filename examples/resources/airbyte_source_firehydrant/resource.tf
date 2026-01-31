resource "airbyte_source_firehydrant" "my_source_firehydrant" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_token             = "...my_api_token..."
  }
  definition_id = "b087a2c9-8417-4e08-b6d1-1d0587e78354"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "4ce467f3-414f-4119-a018-492cbe0ac31c"
}