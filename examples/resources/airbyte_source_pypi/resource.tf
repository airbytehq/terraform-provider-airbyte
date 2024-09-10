resource "airbyte_source_pypi" "my_source_pypi" {
  configuration = {
    project_name = "sampleproject"
    version      = "1.2.0"
  }
  definition_id = "0f8cfe73-78a5-4877-8229-72e237ec3d2a"
  name          = "Bernard Cartwright"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d2efe5e3-4c93-41e7-a72e-f9ee22c4d080"
}