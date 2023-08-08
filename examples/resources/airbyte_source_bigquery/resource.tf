resource "airbyte_source_bigquery" "my_source_bigquery" {
  configuration = {
    credentials_json = "...my_credentials_json..."
    dataset_id       = "...my_dataset_id..."
    project_id       = "...my_project_id..."
    source_type      = "bigquery"
  }
  name         = "Luis Schumm"
  secret_id    = "...my_secret_id..."
  workspace_id = "fdaf313a-1f5f-4d94-a59c-0b36f25ea944"
}