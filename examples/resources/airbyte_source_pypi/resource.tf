resource "airbyte_source_pypi" "my_source_pypi" {
  configuration = {
    project_name = "sampleproject"
    version      = "1.2.0"
  }
  definition_id = "7a4fe630-3928-48c9-9001-e515b2e74052"
  name          = "Sandy Homenick"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ad65e8ae-1d21-47c0-bcbe-7d2d3433ea86"
}