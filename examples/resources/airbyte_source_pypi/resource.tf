resource "airbyte_source_pypi" "my_source_pypi" {
  configuration = {
    project_name = "sampleproject"
    version      = "1.2.0"
  }
  definition_id = "bba7faed-5720-454d-aa84-a4e28fea10a8"
  name          = "Elmer Grady"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7a4fe630-3928-48c9-9001-e515b2e74052"
}