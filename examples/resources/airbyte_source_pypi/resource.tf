resource "airbyte_source_pypi" "my_source_pypi" {
  configuration = {
    project_name = "sampleproject"
    source_type  = "pypi"
    version      = "1.2.0"
  }
  name         = "Antonia Wintheiser"
  secret_id    = "...my_secret_id..."
  workspace_id = "0fb38742-90d3-4365-a1ec-a16ef89451bd"
}