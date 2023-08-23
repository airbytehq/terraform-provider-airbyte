resource "airbyte_source_pypi" "my_source_pypi" {
  configuration = {
    project_name = "sampleproject"
    source_type  = "pypi"
    version      = "1.2.0"
  }
  name         = "Bill Reichert"
  secret_id    = "...my_secret_id..."
  workspace_id = "f0f54856-8a04-424e-80a1-d6eb9434645d"
}