resource "airbyte_source_pypi" "my_source_pypi" {
  configuration = {
    project_name = "sampleproject"
    version      = "1.2.0"
  }
  definition_id = "3d4d6113-3ddb-42a9-9937-ced0062e7b59"
  name          = "Leroy Walker"
  secret_id     = "...my_secret_id..."
  workspace_id  = "152cbd26-6e4c-412d-85e7-f58d4a0625cb"
}