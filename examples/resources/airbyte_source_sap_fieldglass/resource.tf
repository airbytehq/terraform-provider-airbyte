resource "airbyte_source_sap_fieldglass" "my_source_sapfieldglass" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "72c20971-d544-4a65-a7d2-b4609d4ec646"
  name          = "Vicky Maggio"
  secret_id     = "...my_secret_id..."
  workspace_id  = "cce93394-d8a3-45db-b2f9-00f8cfe7378a"
}