resource "airbyte_source_sap_fieldglass" "my_source_sapfieldglass" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "6ceb0e44-0965-49db-b6ec-af35c15b3779"
  name          = "Neil Von"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ccb9fd6e-1ad7-4470-b832-0ef50a8ca76b"
}