resource "airbyte_source_pypi" "my_source_pypi" {
  configuration = {
    project_name = "sampleproject"
    source_type  = "pypi"
    version      = "1.2.0"
  }
  name         = "Ernesto Crist"
  workspace_id = "be3e90bc-40df-4868-bd52-405cb331d492"
}