resource "airbyte_source_sap_fieldglass" "my_source_sapfieldglass" {
  configuration = {
    api_key = "...my_api_key..."
  }
  name         = "Raymond D'Amore"
  secret_id    = "...my_secret_id..."
  workspace_id = "e06a57c7-c577-4af1-a5ba-ddd2747bbc7f"
}