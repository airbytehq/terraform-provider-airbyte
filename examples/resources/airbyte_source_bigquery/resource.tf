resource "airbyte_source_bigquery" "my_source_bigquery" {
  configuration = {
    credentials_json = "...my_credentials_json..."
    dataset_id       = "...my_dataset_id..."
    project_id       = "...my_project_id..."
  }
  definition_id = "9baf3821-deb7-4264-9ad9-e5fb53126691"
  name          = "Darrin Rogahn"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b9ea24da-51fb-473f-872f-2e8bbfe18227"
}