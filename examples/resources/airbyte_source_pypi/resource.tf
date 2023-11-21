resource "airbyte_source_pypi" "my_source_pypi" {
  configuration = {
    project_name = "sampleproject"
    version      = "1.2.0"
  }
  definition_id = "25cbff5b-31f2-4b93-84d3-ebf32902de61"
  name          = "Ann Blanda"
  secret_id     = "...my_secret_id..."
  workspace_id  = "882924ee-80aa-4298-8d84-713ebef014dd"
}