resource "airbyte_source_sap_fieldglass" "my_source_sapfieldglass" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "7c968cce-9339-44d8-a35d-b32f900f8cfe"
  name          = "Ethel Kulas"
  secret_id     = "...my_secret_id..."
  workspace_id  = "58770229-72e2-437e-83d2-ab4198d2efe5"
}