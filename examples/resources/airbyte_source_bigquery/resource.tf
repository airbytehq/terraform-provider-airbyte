resource "airbyte_source_bigquery" "my_source_bigquery" {
  configuration = {
    credentials_json = "...my_credentials_json..."
    dataset_id       = "...my_dataset_id..."
    project_id       = "...my_project_id..."
  }
  definition_id = "b7f8882a-1973-48b2-98b7-0494da21b79c"
  name          = "Lionel McKenzie"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f3821deb-7264-4dad-9e5f-b53126691bfb"
}