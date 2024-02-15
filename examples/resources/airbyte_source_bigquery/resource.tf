resource "airbyte_source_bigquery" "my_source_bigquery" {
  configuration = {
    credentials_json = "...my_credentials_json..."
    dataset_id       = "...my_dataset_id..."
    project_id       = "...my_project_id..."
  }
  definition_id = "b29a2f83-17de-4c4e-beab-02ccb908523d"
  name          = "Willie Jacobs DDS"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c4991982-a682-4b0a-b074-f016f72127f3"
}