resource "airbyte_source_bigquery" "my_source_bigquery" {
  configuration = {
    credentials_json = "...my_credentials_json..."
    dataset_id       = "...my_dataset_id..."
    project_id       = "...my_project_id..."
  }
  definition_id = "fd70e504-57dc-4f4f-a487-4e62c58d8792"
  name          = "Levi Gutmann"
  secret_id     = "...my_secret_id..."
  workspace_id  = "87cb19c4-8ec8-4b45-b3d6-6d007e52a2e4"
}