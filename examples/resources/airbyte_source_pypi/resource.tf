resource "airbyte_source_pypi" "my_source_pypi" {
  configuration = {
    project_name = "sampleproject"
    version      = "1.2.0"
  }
  definition_id = "d3410e39-5a0a-4ac5-9dc9-d09788214279"
  name          = "Eugene Zemlak"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a7105f2e-570a-4d37-aede-1299d4841410"
}