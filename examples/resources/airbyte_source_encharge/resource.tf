resource "airbyte_source_encharge" "my_source_encharge" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "059da04c-c6b9-4297-9f02-46e9a4fe5659"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "2540902d-96ce-424c-aecb-6e08ce06d99a"
}