resource "airbyte_source_bigquery" "my_source_bigquery" {
  configuration = {
    credentials_json = "...my_credentials_json..."
    dataset_id       = "...my_dataset_id..."
    project_id       = "...my_project_id..."
  }
  definition_id = "9bc15119-7618-4c0b-9f50-d0134eefc880"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "4761ed41-87fe-4d40-8184-d75e5dfa39a6"
}