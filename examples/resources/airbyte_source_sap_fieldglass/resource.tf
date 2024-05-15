resource "airbyte_source_sap_fieldglass" "my_source_sapfieldglass" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "73abf4df-ebd4-414e-9a60-3e6b3fca03d9"
  name          = "Mrs. Della Prohaska"
  secret_id     = "...my_secret_id..."
  workspace_id  = "10264179-a403-401b-b87b-13a43b1ead70"
}