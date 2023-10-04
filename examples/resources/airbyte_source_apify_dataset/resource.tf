resource "airbyte_source_apify_dataset" "my_source_apifydataset" {
  configuration = {
    clean      = false
    dataset_id = "...my_dataset_id..."
    token      = "Personal API tokens"
  }
  name         = "Eric King"
  secret_id    = "...my_secret_id..."
  workspace_id = "c9d4f32d-3e19-42a8-a43c-0f29f7cbd12b"
}