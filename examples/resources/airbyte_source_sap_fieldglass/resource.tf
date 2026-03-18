resource "airbyte_source_sap_fieldglass" "my_source_sapfieldglass" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "ec5f3102-fb31-4916-99ae-864faf8e7e25"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "f9ae3029-6c4e-4d63-8881-85c13fd9edfd"
}