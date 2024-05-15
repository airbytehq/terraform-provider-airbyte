resource "airbyte_source_sap_fieldglass" "my_source_sapfieldglass" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "a3692db0-6d3b-4499-9cbd-ae34afcb0631"
  name          = "Troy Bartoletti V"
  secret_id     = "...my_secret_id..."
  workspace_id  = "444d2b89-65ca-4aba-bee9-d6378e7243c0"
}