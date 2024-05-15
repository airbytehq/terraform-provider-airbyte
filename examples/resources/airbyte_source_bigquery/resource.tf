resource "airbyte_source_bigquery" "my_source_bigquery" {
  configuration = {
    credentials_json = "...my_credentials_json..."
    dataset_id       = "...my_dataset_id..."
    project_id       = "...my_project_id..."
  }
  definition_id = "a2d50959-a4fa-450e-807c-86bd0cbf5314"
  name          = "Dr. Tomas Nolan"
  secret_id     = "...my_secret_id..."
  workspace_id  = "21aa3736-7271-4c78-a9aa-9603df323c7d"
}