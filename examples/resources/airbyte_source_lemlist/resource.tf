resource "airbyte_source_lemlist" "my_source_lemlist" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "789f8e7a-2d28-11ec-8d3d-0242ac130003"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "03e45880-e36d-4da5-991d-5ad676e17dd1"
}