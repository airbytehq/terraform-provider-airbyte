resource "airbyte_source_bigquery" "my_source_bigquery" {
  configuration = {
    credentials_json = "...my_credentials_json..."
    dataset_id       = "...my_dataset_id..."
    project_id       = "...my_project_id..."
  }
  name         = "Greg Bayer"
  secret_id    = "...my_secret_id..."
  workspace_id = "d11c7ed1-7b1d-45b0-8289-a0dc02329a5c"
}