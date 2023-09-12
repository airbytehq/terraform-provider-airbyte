resource "airbyte_source_bigquery" "my_source_bigquery" {
  configuration = {
    credentials_json = "...my_credentials_json..."
    dataset_id       = "...my_dataset_id..."
    project_id       = "...my_project_id..."
    source_type      = "bigquery"
  }
  name         = "Joe Bradtke"
  secret_id    = "...my_secret_id..."
  workspace_id = "80bff918-544e-4c42-9efc-ce8f1977773e"
}