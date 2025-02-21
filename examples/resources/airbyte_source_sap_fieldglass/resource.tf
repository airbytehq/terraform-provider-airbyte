resource "airbyte_source_sap_fieldglass" "my_source_sapfieldglass" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "617b3501-8df9-422d-9cf1-f81e6f285e9b"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "f9ae3029-6c4e-4d63-8881-85c13fd9edfd"
}