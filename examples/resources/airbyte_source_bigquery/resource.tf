resource "airbyte_source_bigquery" "my_source_bigquery" {
  configuration = {
    credentials_json = "...my_credentials_json..."
    dataset_id       = "...my_dataset_id..."
    project_id       = "...my_project_id..."
    source_type      = "bigquery"
  }
  name         = "Tracey Bosco"
  secret_id    = "...my_secret_id..."
  workspace_id = "6a08088d-100e-4fad-a200-ef0422eb2164"
}