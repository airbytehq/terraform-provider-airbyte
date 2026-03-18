resource "airbyte_source_scryfall" "my_source_scryfall" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
  }
  definition_id = "f76b7649-322b-44a0-8cef-23aeaae89c42"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "45de241e-8298-4844-ae8c-ea9fe7627133"
}