resource "airbyte_source_sap_fieldglass" "my_source_sapfieldglass" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "sap-fieldglass"
  }
  name         = "Bobbie Block"
  secret_id    = "...my_secretId..."
  workspace_id = "bde64bfc-c546-49d4-815d-fa796206bef2"
}