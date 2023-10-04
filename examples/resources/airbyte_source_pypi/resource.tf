resource "airbyte_source_pypi" "my_source_pypi" {
  configuration = {
    project_name = "sampleproject"
    version      = "1.2.0"
  }
  name         = "Darlene Legros"
  secret_id    = "...my_secret_id..."
  workspace_id = "527913ed-fcf9-4c90-98e6-9d20ee3e4cb5"
}