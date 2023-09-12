resource "airbyte_source_sap_fieldglass" "my_source_sapfieldglass" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "sap-fieldglass"
  }
  name         = "Juana Williamson"
  secret_id    = "...my_secret_id..."
  workspace_id = "2bf7d67c-a84a-4d99-b41d-61243531870c"
}