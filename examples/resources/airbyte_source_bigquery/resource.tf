resource "airbyte_source_bigquery" "my_source_bigquery" {
  configuration = {
    credentials_json = "...my_credentials_json..."
    dataset_id       = "...my_dataset_id..."
    project_id       = "...my_project_id..."
  }
  definition_id = "e9c7e740-1902-4821-9543-0f8964a321f4"
  name          = "Mildred Weimann"
  secret_id     = "...my_secret_id..."
  workspace_id  = "aad078a3-612f-4cb5-a7fd-d854e0c39c22"
}