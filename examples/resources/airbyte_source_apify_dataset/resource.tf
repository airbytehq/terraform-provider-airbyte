resource "airbyte_source_apify_dataset" "my_source_apifydataset" {
  configuration = {
    clean       = false
    dataset_id  = "...my_dataset_id..."
    source_type = "apify-dataset"
  }
  name         = "Leo Dare"
  secret_id    = "...my_secret_id..."
  workspace_id = "785fc378-14d4-4c98-a0c2-bb89eb75dad6"
}