resource "airbyte_source_sap_fieldglass" "my_source_sapfieldglass" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "080cde03-9dd5-4e8c-9778-ddd10910de87"
  name          = "Randal Walsh Sr."
  secret_id     = "...my_secret_id..."
  workspace_id  = "edbd0d10-cf57-4eb6-b2b8-aa55d63fb2a6"
}