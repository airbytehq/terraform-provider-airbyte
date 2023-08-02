resource "airbyte_source_apify_dataset" "my_source_apifydataset" {
  configuration = {
    clean       = false
    dataset_id  = "...my_datasetId..."
    source_type = "apify-dataset"
  }
  name         = "Leo Dare"
  secret_id    = "...my_secretId..."
  workspace_id = "785fc378-14d4-4c98-a0c2-bb89eb75dad6"
}