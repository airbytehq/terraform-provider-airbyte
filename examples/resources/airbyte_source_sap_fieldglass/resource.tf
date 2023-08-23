resource "airbyte_source_sap_fieldglass" "my_source_sapfieldglass" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "sap-fieldglass"
  }
  name         = "Miss Jack Wintheiser"
  secret_id    = "...my_secret_id..."
  workspace_id = "0a0003eb-22d9-4b3a-b0d9-4faa741c57d1"
}