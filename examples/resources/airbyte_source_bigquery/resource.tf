resource "airbyte_source_bigquery" "my_source_bigquery" {
  configuration = {
    credentials_json = "...my_credentials_json..."
    dataset_id       = "...my_dataset_id..."
    project_id       = "...my_project_id..."
  }
  definition_id = "bfd1ddf8-ae8a-4620-b1d7-55597d2ba08c"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "4761ed41-87fe-4d40-8184-d75e5dfa39a6"
}