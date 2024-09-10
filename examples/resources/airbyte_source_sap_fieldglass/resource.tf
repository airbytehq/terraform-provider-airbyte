resource "airbyte_source_sap_fieldglass" "my_source_sapfieldglass" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "60aa0804-c971-4e60-a35d-c09fadad73b7"
  name          = "Miss Taylor Cassin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8acfdc6f-b504-4a12-b772-3cbf0223ae82"
}