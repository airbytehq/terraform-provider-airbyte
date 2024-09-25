resource "airbyte_source_bigquery" "my_source_bigquery" {
  configuration = {
    credentials_json = "...my_credentials_json..."
    dataset_id       = "...my_dataset_id..."
    project_id       = "...my_project_id..."
  }
  definition_id = "4b65d9eb-d757-4e59-8698-1cb460869168"
  name          = "Rosa Beatty"
  secret_id     = "...my_secret_id..."
  workspace_id  = "adb73c36-9be0-4c12-ace5-9b9fbaef8e47"
}