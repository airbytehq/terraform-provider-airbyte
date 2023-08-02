resource "airbyte_source_sap_fieldglass" "my_source_sapfieldglass" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "sap-fieldglass"
  }
  name         = "Donna Gottlieb"
  workspace_id = "c5dbb3c5-7c1e-4498-9e8a-a257ddc1912e"
}