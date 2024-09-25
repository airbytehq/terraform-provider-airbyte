resource "airbyte_source_pypi" "my_source_pypi" {
  configuration = {
    project_name = "sampleproject"
    version      = "1.2.0"
  }
  definition_id = "e7db5a3e-446f-4c1e-8fa9-1f7ef5f462d7"
  name          = "Wallace Fritsch"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1977a1b2-71a5-4b00-9f29-606a36dac995"
}