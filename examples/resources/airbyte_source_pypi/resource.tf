resource "airbyte_source_pypi" "my_source_pypi" {
  configuration = {
    project_name = "sampleproject"
    version      = "1.2.0"
  }
  definition_id = "1f2b9304-d3eb-4f32-902d-e61711be8829"
  name          = "Darlene Turcotte"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0aa2980d-8471-43eb-af01-4dd9af7c7e9c"
}