resource "airbyte_source_pendo" "my_source_pendo" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "0095a640-e559-4766-826e-beced15bc886"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "7c389f35-1a33-4f9f-9deb-a47c0e8cb860"
}