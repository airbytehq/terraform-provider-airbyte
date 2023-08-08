resource "airbyte_source_pypi" "my_source_pypi" {
  configuration = {
    project_name = "sampleproject"
    source_type  = "pypi"
    version      = "1.2.0"
  }
  name         = "Mercedes Fritsch"
  secret_id    = "...my_secret_id..."
  workspace_id = "f4f127fb-0e0b-4f1f-8217-978d0acca77a"
}